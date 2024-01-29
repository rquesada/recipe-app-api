FROM python:3.9-alpine3.13
LABEL maintainer="Roy Quesada"

# It tells Python to run in unbuffered mode which is recommended when running Python within Docker containers.
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /tmp/requirements.txt
COPY ./requirements.dev.txt /tmp/requirements.dev.txt
COPY ./app /app
WORKDIR /app
EXPOSE 8000

ARG DEV=false
RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /tmp/requirements.txt && \
    if [ $DEV = "true"]; \
        then /py/bin/pip install -r /tmp/requirements.dev.txt; \
    fi && \
    rm -rf /tmp && \
    adduser -D -h /home/django-user -s /bin/bash django-user

ENV PATH="/py/bin:$PATH" 

USER django-user