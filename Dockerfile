FROM python:3.9-alpine3.13
LABEL maintainer="afeiya.com"

ENV PYTHONUNBUFFERED 1
COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip --index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    /py/bin/pip install -r /tmp/requirements.txt --index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    if [ "$DEV" = "true" ]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt --index-url https://pypi.tuna.tsinghua.edu.cn/simple; \
    fi && \
    rm -rf /tmp && \
    adduser \
        --disabled-password \
        --no-create-home \
        django-user

ENV PATH="/py/bin:$PATH"

USER django-user
