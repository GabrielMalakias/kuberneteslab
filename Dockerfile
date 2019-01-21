FROM ruby:2.5.0

RUN mkdir /kuberneteslab

ADD . /kuberneteslab
WORKDIR /kuberneteslab

RUN bundle install

EXPOSE 4567
CMD ruby lib/app.rb
