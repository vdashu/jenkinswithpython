# -*- coding: utf-8 -*-
"""
Created on Sun Nov  8 18:10:23 2020

@author: Vishwa Deepak
"""
from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello():
    return "Welcome to machine learning model APIs!"


if __name__ == '__main__':
    app.run(host='0.0.0.0' ,port=8080)
