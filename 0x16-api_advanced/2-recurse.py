#!/usr/bin/python3
""" Module that contains a function which queries the reddit api """
import requests


def recurse(subreddit, hot_list=[], after=None):
    """
    recursive function that queries the Reddit API and returns a list
    containing the titles of all hot articles for a given subreddit
    """
    headers = {"User-Agent": "Python/3"}
    url = "https://www.reddit.com/r/{}/hot.json".format(subreddit)

    params = {"after": after}
    res = requests.get(url, params=params, headers=headers, allow_redirects=False)

    if res.status_code == 200:
        data = res.json()
        posts = data['data']['children']

        hot_list.extend(post['data']['title'] for post in posts)

        after = data['data']['after']

        if after is not None:
            return recurse(subreddit, hot_list, after)
        else:
            return hot_list
    else:
        return None
