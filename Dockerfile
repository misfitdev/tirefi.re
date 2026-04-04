FROM ruby:3.3-alpine
RUN apk add --no-cache build-base git
WORKDIR /srv/jekyll
EXPOSE 4000
