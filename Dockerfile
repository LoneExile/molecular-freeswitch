FROM node:current-alpine

ENV NODE_ENV=production

RUN mkdir /app
WORKDIR /app

COPY package.json package-lock.json ./

RUN npm install --production

COPY . .

EXPOSE 5060/tcp 5060/udp 5080/tcp 5080/udp
EXPOSE 8021/tcp

CMD ["npm", "start"]
