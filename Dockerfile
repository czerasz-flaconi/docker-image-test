FROM node:10.11.0-stretch

WORKDIR /app/
COPY ./package.json ./yarn.lock ./
RUN yarn
COPY ./app.js ./

ENV PORT 4000
EXPOSE 4000

CMD ["node", "app.js"]
