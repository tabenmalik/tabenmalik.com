import os

from flask import Flask, render_template

def create_app(test_config=None):
    app = Flask(__name__)

    @app.route('/')
    def hello():
        return render_template('index.html')

    return app
