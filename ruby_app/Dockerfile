FROM ruby:2.5.0

RUN mkdir /ruby_app

ADD . /ruby_app
WORKDIR /ruby_app

RUN bundle install

EXPOSE 4567
CMD ruby lib/app.rb
