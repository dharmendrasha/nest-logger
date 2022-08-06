FROM node:lts-alpine3.16

WORKDIR /app
COPY . .

RUN npm install \
    && npm run build

WORKDIR /app/example

RUN npm install \
    && npm run build

CMD ["npm", "run", "start:debug", "--", "0.0.0.0:9229"]
