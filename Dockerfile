FROM python:3.9-alpine3.13
LABEL maintainer="afeiya.com"

ENV PYTHONUNBUFFERED 1
COPY ./requirments.txt /tmp/requirments.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

ENV PATH="/py/bin:$PATH"

USER django-user