#!/usr/bin/python3
""" Module that contains a function which queries the reddit api """
import requests


def number_of_subscribers(subreddit):
    """
    function that queries the Reddit API and returns the number of subscribers
    (not active users, total subscribers) for a given subreddit.
    If an invalid subreddit is given, returns 0.
    """
    url = "https://www.reddit.com/r/{}/about.json".format(subreddit)
    header = {"User-Agent": "Python/3 (requests)"}

    res = requests.get(url, headers=header)

    if res.status_code == 200:
        data = res.json()
        return data.get("data").get("subscribers")
    else:
        return 0
