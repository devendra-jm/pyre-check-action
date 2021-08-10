FROM python:3.7-slim as base

COPY entrypoint.sh /entrypoint.sh

RUN apt-get update && apt-get install -y build-essential jq curl

RUN pip install --upgrade pip
RUN pip install pyre-check==0.0.41

ENTRYPOINT ["/entrypoint.sh"]
