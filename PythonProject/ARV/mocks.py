from django.http import Http404

class Post():

    POSTS = [
        ''
    ]


@classmethod
def all(cls):
    return cls.POSTS

@classmethod
def