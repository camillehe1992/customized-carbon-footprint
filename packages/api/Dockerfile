# ARG BUILDPLATFORM=arm64
FROM node:16-alpine

WORKDIR /usr/src/app

COPY ./dist ./dist
COPY ./package.json .

RUN --mount=type=cache,target=/root/.cache/yarn \
    yarn install --immutable
RUN rm -rf core

# Fix offical API docker image cannot find aws config file issue
COPY .aws /root/.aws

CMD [ "yarn", "start:webprod"]