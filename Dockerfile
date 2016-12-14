FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs imagemagick
ENV app /app
RUN mkdir $app
WORKDIR $app
ADD Gemfile $app/Gemfile
ADD Gemfile.lock $app/Gemfile.lock
RUN bundle install --without development test --jobs 4 --retry 5
ADD . $app

CMD ["./docker-entrypoint"]
