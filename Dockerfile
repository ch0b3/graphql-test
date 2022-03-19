FROM ruby:2.7.0

# RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - &&\
#     apt-get update -qq &&\
#     apt-get -y install yarn

ENV LANG ja_JP.UTF-8

ENV TZ=Asia/Tokyo

WORKDIR /usr/src/app
COPY Gemfile .
COPY Gemfile.lock .
RUN bundle config set force_ruby_platform true
RUN bundle install

CMD ["/bin/sh"]
