
FROM node:alpine
ENV HOST=127.0.0.1
WORKDIR /app
EXPOSE 3000
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]
