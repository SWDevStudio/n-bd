FROM node:14.18.2

WORKDIR /n-bd

COPY package.json .

RUN npm install

COPY . .

ENV PORT 3000

EXPOSE $PORT

CMD ["npm", "run", "build"]
CMD ["npm", "run", "start"]

