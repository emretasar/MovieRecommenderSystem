import pandas as pd
import datetime
from MovieLens import MovieLens
from scipy.interpolate import interp1d
import numpy as np


def LoadMovieLensData():
    ml = MovieLens()
    data = ml.loadMovieLensLatestSmall()
    rankings = ml.getPopularityRanks()
    return (ml, data, rankings)


def appendNewUser(ratedMovieIdList, ratedMovieRatingList):
    ratingsPath = './ml-latest-small/ratings.csv'
    data = pd.read_csv(ratingsPath)

    next_user_ID = data["userId"].max() + 1

    current_time = datetime.datetime.now()
    date_time = datetime.datetime(current_time.year, current_time.month, current_time.day)
    digit_timestamp = int(date_time.timestamp())

    append_data = {'userId' : [next_user_ID] * len(ratedMovieIdList),
                'movieId': ratedMovieIdList,
                'rating' : ratedMovieRatingList, 
                'timestamp': [digit_timestamp] * len(ratedMovieIdList)  }

    append_frame = pd.DataFrame(append_data)

    frames = [data, append_frame]
    updated_data = pd.concat(frames, ignore_index=True)
    updated_data.to_csv('./ml-latest-small/ratings.csv', index=False)

    return next_user_ID

def movieAddUpdate(recommended_movies, recommendations):
    for movie in recommendations:
        movie_name = movie[0]
        movie_rate = movie[1]
        if (movie_rate > 0):
            if recommended_movies.get(movie_name):
                recommended_movies[movie_name] += movie_rate
            else:
                recommended_movies[movie_name] = movie_rate
    
    return recommended_movies

def rating_mapper(min_val, max_val, movies):
    mapped_movies = []

    min_rating = movies[-1][1]
    max_rating = movies[0][1]
    mapper = interp1d([min_rating, max_rating], [min_val, max_val], fill_value="extrapolate")

    for movie in movies:
        movie_name = movie[0]
        mapped_movie_rating = np.clip(mapper(movie[1]), min_val, max_val)  # Clip values within the desired range
        mapped_movies.append((movie_name, mapped_movie_rating))
    
    return mapped_movies