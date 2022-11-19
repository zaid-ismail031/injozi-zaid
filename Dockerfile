FROM node:16

WORKDIR /usr/src/app

# Install app dependancies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 3000

CMD ["npm", "start"]