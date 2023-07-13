FROM node:lts-buster

RUN apt-get update \
  && apt-get install -y \
  ffmpeg \
  imagemagick \
  webp \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

CMD ["npm", "start"]
