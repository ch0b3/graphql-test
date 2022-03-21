FROM ruby:2.7.0

ENV LANG ja_JP.UTF-8

ENV TZ=Asia/Tokyo

WORKDIR /usr/src/app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle install

CMD ["/bin/sh"]
