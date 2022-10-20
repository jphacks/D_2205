FROM ruby:3.1.2
ENV LANG C.UTF-8

RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
		postgresql-client \
        libvips-dev \
	&& rm -rf /var/lib/apt/lists/*

ENV APP_HOME /rails_app
WORKDIR $APP_HOME
COPY Gemfile* $APP_HOME

EXPOSE 3000

