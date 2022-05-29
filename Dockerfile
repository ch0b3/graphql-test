FROM ruby:2.7.0

ENV LANG ja_JP.UTF-8

ENV TZ=Asia/Tokyo

WORKDIR /usr/src/app
COPY Gemfile .
COPY Gemfile.lock .
# RUN bundle install
RUN bundle config set force_ruby_platform true

CMD ["/bin/sh"]
