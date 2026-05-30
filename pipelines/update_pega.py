#!/usr/bin/env python

import requests
import sys

PEGA_URL = "https://aflac-devops-internal.pegacloud.io/prweb"


def get_token():
    """
    Pull bearer token from Pega Deployment Manager
    Raise error if unsuccessful request

    """
    url = PEGA_URL + "/PRRestService/oauth2/v1/token"
    payload = {
        'client_id': '68656303360243191598',
        'client_secret': '53D376B14E746F809C9AB2ECBADFBC9F',
        'grant_type': 'client_credentials'
    }
    try:
        r = requests.post(url=url, data=payload, headers={"content-type":"application/x-www-form-urlencoded"})
        r.raise_for_status()
        return r.json()['access_token']
    except requests.exceptions.HTTPError as err:
        raise SystemExit(err)


def get_tasks(token):
    """
    Pull back tasks from deployment manager.
    Raise error if unsuccessful request
    
    """
    url = PEGA_URL + "/api/DeploymentManager/v1/tasks"

    try:
        r = requests.get(url=url, headers={"Authorization": "Bearer {}".format(token)})
        r.raise_for_status()
        return r.json()
    except requests.exceptions.HTTPError as err:
        raise SystemExit(err)


def get_reports(token):
    """
    Pull back reports from deployment manager.
    Raise error if unsuccessful request
    
    """
    url = PEGA_URL + "/PRRestService/DeploymentManager/v1/pipelines/Pipeline-5YD5X/report/avgTimeByTask"

    try:
        r = requests.get(url=url, headers={"Authorization": "Bearer {}".format(token)})
        r.raise_for_status()
        return r.json()
    except requests.exceptions.HTTPError as err:
        raise SystemExit(err)


def update_task(token, task_id):
    """
    Update tasks on Pega deployment manager.
    Raise error if unsuccessful request

    """
    url = PEGA_URL + "/api/DeploymentManager/v1/tasks/{}".format(task_id)
    payload = {
        "taskStatus": "Resolved-Completed",
        "taskInfo": {
                "outputParameters": {}
            },
        "intermediateInputsList": [] 
    }
    try:
        r = requests.put(url=url, data=payload, headers={"Authorization": "Bearer {}".format(token), "content-type":"application/json"})
        r.raise_for_status()
        return r.json()['access_token']
    except requests.exceptions.HTTPError as err:
        raise SystemExit(err)



if __name__ == "__main__":
    try:
        task_id = sys.argv[1]
    except IndexError:
        raise SystemExit('No PDM Task ID passed to script')

    token = get_token()
    print(get_tasks(token))
    print(get_reports(token))
