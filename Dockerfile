FROM alpine:3.14.0

RUN apk --update --no-cache add git curl bash nodejs=14.17.1-r0

COPY ./scripts /scripts
ENV PATH="/scripts/bin:${PATH}"

RUN curl https://cli-assets.heroku.com/install.sh | sh

RUN adduser -S heroku
USER heroku

ENTRYPOINT ["/scripts/entrypoint"]
