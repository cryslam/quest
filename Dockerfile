ARG NODE_VERSION=21
FROM node:${NODE_VERSION}-alpine

ENV SECRET_WORD TwelveFactor

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app

WORKDIR /home/node/app

COPY package*.json ./

# Run the application as a non-root user.
USER node

RUN npm install

#app files owned by node user
COPY --chown=node:node . .

RUN echo "$SECRET_WORD"

# Expose port tht app listens on.
EXPOSE 3000

CMD npm start
