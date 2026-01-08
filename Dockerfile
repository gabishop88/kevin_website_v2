FROM node:20-alpine

WORKDIR /site

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "serve"]
