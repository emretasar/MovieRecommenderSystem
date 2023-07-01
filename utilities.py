import pandas as pd
import datetime


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