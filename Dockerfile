FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.jhjcln1.mongodb.net
ENV MONGODB_USERNAME dayoadeboye
ENV MONGODB_PASSWORD A8u8iKUMTjeBYT2j

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]