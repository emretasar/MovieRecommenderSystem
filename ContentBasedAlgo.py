from surprise import AlgoBase
import math
import numpy as np
from EvaluationData import EvaluationData



class ContentBasedAlgorithm(AlgoBase):

    def __init__(self, movie_lens, dataset, rankings, test_subject, k=5, sim_options={}):
        AlgoBase.__init__(self)
        ed = EvaluationData(dataset, rankings)
        self.dataset = ed
        self.k = k
        self.target_user = test_subject
        self.ml = movie_lens

    def fit(self, trainset):
        AlgoBase.fit(self, trainset)

        genres = self.ml.getGenres()
        years = self.ml.getYears()
        target_user_ratings = self.ml.getUserRatings(self.target_user)

        self.similarities = np.zeros(
            (self.trainset.n_items, len(target_user_ratings)))

        for row_id in range(trainset.n_items):
            for column_id, (user_rated_movie_id, user_rating) in enumerate(target_user_ratings):
                row_movie_id = int(self.trainset.to_raw_iid(row_id))
                column_movie_id = user_rated_movie_id
                genreSimilarity = self.computeGenreSimilarity(row_movie_id, column_movie_id, genres)
                yearSimilarity = self.computeYearSimilarity(row_movie_id, column_movie_id, years)
                self.similarities[row_id, column_id] = genreSimilarity * yearSimilarity

        return self

    def computeGenreSimilarity(self, movie1, movie2, genres):
        genres1 = genres[movie1]
        genres2 = genres[movie2]
        sumxx, sumxy, sumyy = 0, 0, 0
        for i in range(len(genres1)):
            x = genres1[i]
            y = genres2[i]
            sumxx += x * x
            sumyy += y * y
            sumxy += x * y

        return sumxy/math.sqrt(sumxx*sumyy)

    def computeYearSimilarity(self, movie1, movie2, years):
        diff = abs(years[movie1] - years[movie2])
        sim = math.exp(-diff / 10.0)
        return sim

    def predict(self):
        trainSet = self.dataset.GetFullTrainSet()
        self.fit(trainSet)

        predictions = []

        target_user_ratings = self.ml.getUserRatings(self.target_user)

        testSet = self.dataset.GetAntiTestSetForUser(self.target_user)
        for row_index, (_, movie_id, _) in enumerate(testSet):
            similarity_total = 0
            weighted_rate_total = 0
            indexes = np.argpartition(self.similarities[row_index], -(self.k))[-(self.k):]
            for idx in indexes:
                similarity_total += self.similarities[row_index][idx]
                weighted_rate_total += target_user_ratings[idx][1] * self.similarities[row_index][idx]

            if similarity_total > 0:
                predicted_rate = weighted_rate_total / similarity_total
                predictions.append((self.ml.getMovieName(int(movie_id)), predicted_rate))

        predictions.sort(key=lambda x: x[1], reverse=True)

        return predictions



