FROM node:latest
WORKDIR /app
ENV user==vikas
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 3000
ENTRYPOINT ["npm","start"]
