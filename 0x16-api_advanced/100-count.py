import requests
from collections import Counter

def count_words(subreddit, word_list, after=None):
    if not word_list:
        return

    headers = {'User-Agent': 'Python/3'}
    url = f'https://www.reddit.com/r/{subreddit}/hot.json'

    if after:
        url += f'?after={after}'

    try:
        response = requests.get(url, headers=headers, allow_redirects=False)

        if response.status_code == 200:
            data = response.json()
            posts = data['data']['children']

            title_text = " ".join(post['data']['title'].lower() for post in posts)
            keyword_counts = Counter(title_text.split())

            for word in word_list:
                keyword = word.lower()
                if keyword in keyword_counts:
                    print(f"{keyword}: {keyword_counts[keyword]}")

            after = data['data']['after']

            if after is not None:
                count_words(subreddit, word_list, after)
