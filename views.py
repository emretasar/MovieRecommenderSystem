from flask import render_template, request
from datetime import datetime
from utilities import appendNewUser, LoadMovieLensData
import server
from ContentBasedAlgo import ContentBasedAlgorithm


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

        contentBasedAlgo = ContentBasedAlgorithm(movie_lens=ml, dataset=evaluationData, rankings=rankings, test_subject=newUserId, k=5)
        content_based_recommendations = contentBasedAlgo.predict()
        
        return render_template("get_recommendations.html", ids=ratedMovieIdList, ratings=ratedMovieRatingList, recs=content_based_recommendations)


def results_page():
    return render_template("results.html")


def about_page():
    return render_template("about.html")
