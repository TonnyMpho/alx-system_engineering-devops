#!/usr/bin/python3
"""
Python script that use REST API, for a given employee ID,
returns information about his/her TODO list progress.
"""
import requests
from sys import argv


if __name__ == "__main__":
    user_id = argv[1]

    url = "https://jsonplaceholder.typicode.com/"
    employee = requests.get(url + "users/{}".format(user_id))
    todos = requests.get(url + "todos", params={"userId": user_id}).json()

    emp_name = employee.json().get("name")
    completed = []

    for todo in todos:
        if todo.get("completed") is True:
            completed.append(todo)

    print("Employee {} is done with tasks({}/{}):".format(
        emp_name, len(completed), len(todos)))
    for todo in completed:
        print("\t" + todo.get("title"))
