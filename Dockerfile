FROM ruby:2.4.1
ENV LANG C.UTF-8
RUN apt-get update -qq && \
    apt-get install -y  build-essential libpq-dev nodejs postgresql-client vim
RUN gem install bundler --pre
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile .
ADD Gemfile.lock .
ENV BUNDLE_JOBS=4 \
    BUNDLE_PATH=/bundle
RUN bundle install -j4 --path=/bundle
ADD . /myapp
