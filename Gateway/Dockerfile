FROM ruby:latest
WORKDIR /usr/src/app
COPY Gemfile /usr/src/app
COPY app.rb /usr/src/app
RUN bundle install
EXPOSE 4567
ENTRYPOINT ["ruby", "app.rb"]
