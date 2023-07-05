from flask import Flask
import views


def create_app():
    app = Flask(__name__)
    app.config.from_object("settings")

    app.add_url_rule("/", view_func=views.home_page)
    app.add_url_rule("/algorithms", view_func=views.algorithms_page)
    app.add_url_rule("/rate", view_func=views.rate_page, methods =['GET', 'POST'])
    app.add_url_rule("/get_recommendations", view_func=views.get_recommendations_page, methods =['GET', 'POST'])
    app.add_url_rule("/about", view_func=views.about_page)

    return app

if __name__ == "__main__":
    app = create_app()
    port = app.config.get("PORT", 5000)
    app.run(host="0.0.0.0", port=port)

