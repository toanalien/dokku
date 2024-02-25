ARG APP_IMAGE
FROM $APP_IMAGE

ARG DOKKU_APP_USER herokuishuser
RUN USER=$DOKKU_APP_USER /exec true
COPY --chown=$DOKKU_APP_USER . /app
WORKDIR /app