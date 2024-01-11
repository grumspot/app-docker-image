# It's better to use alpine, but deploying function fails with a javy error, so using bookworm for now
FROM ruby:3.3-bookworm

RUN apt-get update && \
    apt-get install -y docker \
            git \
            nodejs \
            npm \
            bash \
            make

RUN npm install -g \
          corepack \
          @shopify/cli \
          @shopify/theme
