import unittest
import app

def test_app_of_at_least_two__words():
    phrase = app.hello_world()
    assert len(phrase.split()) >= 2
