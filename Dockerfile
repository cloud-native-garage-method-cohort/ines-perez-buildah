FROM quay.io/ibmgaragecloud /node

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY app.js ./
COPY bin ./bin
COPY public ./public
COPY routes ./routes
COPY views ./views

EXPOSE 3000

CMD ["npm", "start"]