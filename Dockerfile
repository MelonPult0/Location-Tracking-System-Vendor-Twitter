# Base Image(Operating sys we need on Docker)
FROM node:18.14.0

WORKDIR /usr/src/app

# Copy package.json into our main folder
COPY package.json .

RUN npm install && npm install typescript -g

COPY . .

RUN tsc

CMD [ "npm", "start" ]

EXPOSE 80

HEALTHCHECK --interval=10s --timeout= \ CMD curl -f http://localhost:80/ || exit 1