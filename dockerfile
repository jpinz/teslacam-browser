FROM node:12

# Create app directory
WORKDIR /app

COPY package*.json ./

RUN npm install

# Copy entire directory
COPY . .

# Run server
CMD [ "node", "server.js", "./"]