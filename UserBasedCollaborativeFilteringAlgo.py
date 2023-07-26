from surprise import KNNBasic
import heapq
from collections import defaultdict
from operator import itemgetter


class UserBasedCollaborativeFilteringAlgorithm():
    
    def __init__(self, movie_lens, test_subject, k=5, sim_options={}):
        self.test_subject = test_subject
        self.k = k
        self.sim_options = sim_options
        self.ml = movie_lens
        data = self.ml.loadMovieLensLatestSmall()
        self.train_set = data.build_full_trainset()

    def fit(self):
        model = KNNBasic(sim_options=self.sim_options)
        model.fit(self.train_set)
        self.similarities = model.compute_similarities()

    def predict(self):
        testUserInnerID = self.train_set.to_inner_uid(self.test_subject)
        similarityRow = self.similarities[testUserInnerID]

        similarUsers = []
        for innerID, score in enumerate(similarityRow):
            if (innerID != testUserInnerID):
                similarUsers.append( (innerID, score) )

        kNeighbors = heapq.nlargest(self.k, similarUsers, key=lambda t: t[1])

        candidates = defaultdict(float)
        for similarUser in kNeighbors:
            innerID = similarUser[0]
            userSimilarityScore = similarUser[1]
            theirRatings = self.train_set.ur[innerID]
            for rating in theirRatings:
                candidates[rating[0]] += (rating[1] / 5.0) * userSimilarityScore
            
        watched = {}
        for itemID, rating in self.train_set.ur[testUserInnerID]:
            watched[itemID] = 1
            
        recommendations = []

        for itemID, ratingSum in sorted(candidates.items(), key=itemgetter(1), reverse=True):
            if not itemID in watched:
                movieID = self.train_set.to_raw_iid(itemID)
                recommendations.append((self.ml.getMovieName(int(movieID)), ratingSum))
        
        recommendations.sort(key=lambda x: x[1], reverse=True)
        
        return recommendations