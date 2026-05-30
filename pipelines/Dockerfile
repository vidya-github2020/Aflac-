FROM artifactory.aws.aflac.com/docker/python:3.13

HEALTHCHECK NONE

WORKDIR /pave

COPY PAVE_RobotFrameworkTests/pipelines/requirements.txt requirements.txt 

RUN python -m pip install --upgrade --ignore-installed pip && \
    pip install --upgrade -r requirements.txt

ENV ROBOT_COMMON=/usr/local/lib/python3.13/site-packages/AflacCommon