from flask import render_template, request
from datetime import datetime
from utilities import appendNewUser, LoadMovieLensData, movieAddUpdate, rating_mapper
import server
from ContentBasedAlgo import ContentBasedAlgorithm
from ItemBasedCollaborativeFilteringAlgo import ItemBasedCollaborativeFilteringAlgorithm
from UserBasedCollaborativeFilteringAlgo import UserBasedCollaborativeFilteringAlgorithm
from collections import defaultdict
from operator import itemgetter


def home_page():
    today = datetime.today()
    day_name = today.strftime("%A")
    return render_template("home.html", day=day_name)


def algorithms_page():
    return render_template("algorithms.html")

def rate_page():
    cur = server.mysql.connection.cursor()
    cur.execute("SELECT * FROM movie")
    movies = cur.fetchall()
    cur.close()
    return render_template("rate.html", movies=movies)


def get_recommendations_page():
    
    cur = server.mysql.connection.cursor()
    cur.execute("SELECT movie_id FROM movie")
    movie_ids = cur.fetchall()

    movieIdList = []
    for movie_id in movie_ids:
        movieIdList.append(movie_id[0])

    ratedMovieIdList = movieIdList.copy()
    ratedMovieRatingList = []

    if request.method == "POST":

        for idx, movieId in enumerate(movieIdList):
            param = str(idx+1)
            rate = request.form.get(param)

            if rate == '':
                ratedMovieIdList.remove(movieId)
                continue
            
            ratedMovieRatingList.append(float(rate) / 2)


        newUserId = appendNewUser(ratedMovieIdList, ratedMovieRatingList)

        (ml, evaluationData, rankings) = LoadMovieLensData()

        sim_options = {'name': 'cosine',
                    'user_based': False }


        recommended_movies = defaultdict()

        ContentBasedAlgo = ContentBasedAlgorithm(movie_lens=ml, dataset=evaluationData, rankings=rankings, test_subject=newUserId, k=3)
        content_based_recommendations = ContentBasedAlgo.predict()
        content_based_recommendations = rating_mapper(0, 5, content_based_recommendations)
        
        recommended_movies = movieAddUpdate(recommended_movies, content_based_recommendations)
            
        ItemBasedCollaborativeFilteringAlgo = ItemBasedCollaborativeFilteringAlgorithm(movie_lens=ml, test_subject=str(newUserId), k=3, sim_options=sim_options)
        ItemBasedCollaborativeFilteringAlgo.fit()
        item_based_recommendations = ItemBasedCollaborativeFilteringAlgo.predict()
        item_based_recommendations = rating_mapper(0, 5, item_based_recommendations)
        
        recommended_movies = movieAddUpdate(recommended_movies, item_based_recommendations)


        UserBasedCollaborativeFilteringAlgo = UserBasedCollaborativeFilteringAlgorithm(movie_lens=ml, test_subject=str(newUserId), k=3, sim_options=sim_options)
        UserBasedCollaborativeFilteringAlgo.fit()
        user_based_recommendations = UserBasedCollaborativeFilteringAlgo.predict()
        user_based_recommendations = rating_mapper(0, 5, user_based_recommendations)

        recommended_movies = movieAddUpdate(recommended_movies, user_based_recommendations)

        recommended_movies = sorted(recommended_movies.items(), key=itemgetter(1), reverse=True)
        recommended_movies = [(movie[0], movie[1]/3) for movie in recommended_movies]
    
        
        return render_template("get_recommendations.html", sum_recs=recommended_movies)


def results_page():
    return render_template("results.html")


def about_page():
    return render_template("about.html")
