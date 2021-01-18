FROM node:14.15.4-slim

#étape de build
WORKDIR /app

# install
COPY . .
RUN yarn add node-sass
RUN yarn install

EXPOSE 8080/tcp
EXPOSE 8080/udp

# start app
CMD ["yarn", "serve"]