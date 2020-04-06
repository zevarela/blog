# Defines https://hub.docker.com/repository/docker/hamelsmu/fastpages-jekyll
FROM jekyll/jekyll:4.0.0

COPY . .

# Pre-load all gems into the environment
RUN gem install bundler jemoji
RUN chmod a+w /home/jekyll /var/jekyll /srv/jekyll /srv/jekyll/Gemfile.lock /srv/jekyll/.jekyll-cache
RUN jekyll build --trace
