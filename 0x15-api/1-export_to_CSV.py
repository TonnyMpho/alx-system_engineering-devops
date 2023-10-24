#!/usr/bin/python3
"""
Python script that use REST API, for a given employee ID,
returns information about his/her TODO list progress.
"""
import csv
import requests
from sys import argv


if __name__ == "__main__":
    if len(argv) != 2:
        exit(1)

    user_id = argv[1]

    url = "https://jsonplaceholder.typicode.com/"
    res = requests.get(url + "users/{}".format(user_id))
    todos = requests.get(url + "todos", params={"userId": user_id}).json()

    if res.status_code != 200:
        print("User not found")
        exit(1)

    username = res.json().get("username")

    with open("{}.csv".format(user_id), 'w') as csv_f:
            writer = csv.writer(csv_f, quoting=csv.QUOTE_ALL)
            for todo in todos:
                writer.writerow(
                        [user_id, username, todo.get("completed"), todo.get("title")])
