FROM ruby:2.3.1
MAINTAINER Michelle D. Zhang <zhang.michelle.d@gmail.com>

RUN gem install bundler

# Install gems, again COPYing Gemfiles separately
# to capitalize on Docker's caching abilities
COPY Gemfile* /tmp/gemfile/
WORKDIR /tmp/gemfile
RUN bundle install

# Copy over application files
# This will invalidate the Docker cache, so keep time consuming commands after this point to a minimum
COPY . /app
WORKDIR /app

# This is mostly just documentation, it itself does not accomplish port forwarding
EXPOSE 4567

# Sinatra will block docker port-forwarding unless explicitly binded to 0.0.0.0 below
CMD ["shotgun", "myapp.rb", "--port=4567", "--host=0.0.0.0"]