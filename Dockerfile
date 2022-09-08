FROM ruby:3.1.2-alpine

WORKDIR /
ADD . .
RUN  bundle install

CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "9292"]
