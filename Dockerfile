FROM ruby:2.1

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        nodejs \
        nodejs-legacy \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN gem install --no-rdoc --no-ri github-pages -v 37

WORKDIR /site

EXPOSE 4000

ENTRYPOINT ["jekyll"]
