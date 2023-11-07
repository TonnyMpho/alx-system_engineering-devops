#!/usr/bin/python3
""" Module that contains a function which queries the reddit api """
import requests


def top_ten(subreddit):
    """
    unction that queries the Reddit API and prints the titles of the first
    10 hot posts listed for a given subreddit.
    """
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)

    header = {"User-Agent": "Python/3 (requests)"}
    res = requests.get(url, headers=header)

    if res.status_code == 302:
        return None

    if res.status_code == 200:
        posts = []
        posts = res.json()["data"]["children"][:10]

        for post in posts:
            print(post["data"]["title"])
    else:
        return None
