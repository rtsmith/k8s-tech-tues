FROM ruby:latest
WORKDIR /usr/src/app
COPY src/ /usr/src/app
COPY Gemfile /usr/src/app
RUN bundle install
ENTRYPOINT ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "4567"]
