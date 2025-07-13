FROM node:current-alpine3.22
WORKDIR /reciver
# COPY .env .env
COPY env.d.ts env.d.ts
COPY package*.json ./
COPY tsconfig.json ./
COPY ./src ./src
COPY ./lib ./lib
RUN npm i
RUN npm run build
CMD ["npm", "run", "start"]