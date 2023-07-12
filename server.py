from flask import Flask
from flask_mysqldb import MySQL
import views


app = Flask(__name__)
app.config.from_object("settings")
app.config['MYSQL_HOST'] = 'localhost'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = ''
app.config['MYSQL_DB'] = 'movies'
mysql = MySQL(app)

def create_app():
    app.add_url_rule("/", view_func=views.home_page)
    app.add_url_rule("/algorithms", view_func=views.algorithms_page)
    app.add_url_rule("/rate", view_func=views.rate_page, methods =['GET', 'POST'])
    app.add_url_rule("/get_recommendations", view_func=views.get_recommendations_page, methods =['GET', 'POST'])
    app.add_url_rule("/results", view_func=views.results_page)
    app.add_url_rule("/about", view_func=views.about_page)

    return app

if __name__ == "__main__":
    app = create_app()
    port = app.config.get("PORT", 5000)
    app.run(host="0.0.0.0", port=port, debug=True)

