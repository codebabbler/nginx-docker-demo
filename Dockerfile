FROM node:22-alpine

WORKDIR /app

COPY package*.json ./
RUN  npm install --production

COPY server.js .

COPY index.html .

COPY css/style.css ./css/style.css

COPY images/ ./images/

EXPOSE 3000

CMD ["node", "server.js"]
