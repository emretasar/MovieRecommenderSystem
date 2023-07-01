from flask import render_template, request
from datetime import datetime
from utilities import appendNewUser


movieIdList = [4993, 6539, 858, 115149, 79132]

def home_page():
    today = datetime.today()
    day_name = today.strftime("%A")
    return render_template("home.html", day=day_name)

def rate_page():
    return render_template("rate.html", ratings=movieIdList)

def get_recommendations_page():
    
    ratedMovieIdList = movieIdList.copy()
    ratedMovieRatingList = []

    if request.method == "POST":

        for idx, movieId in enumerate(movieIdList):
            param = "rating" + str(idx+1)
            rate = request.form.get(param)

            if rate == '':
                ratedMovieIdList.remove(movieId)
                continue
            
            ratedMovieRatingList.append(float(rate) / 2)


        newUserId = appendNewUser(ratedMovieIdList, ratedMovieRatingList)

        return render_template("get_recommendations.html", ids=ratedMovieIdList, ratings=ratedMovieRatingList)

