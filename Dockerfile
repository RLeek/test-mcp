FROM node:22.12-alpine AS builder

WORKDIR /app
COPY . ./

RUN npm install
RUN npm ci --ignore-scripts --omit-dev

ENTRYPOINT ["node", "dist/index.js"]