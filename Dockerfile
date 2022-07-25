# name of node image to build from:
FROM node:16-alpine3.16

# new working directory name within the image
WORKDIR /app

# copy over the package.json/package-lock.json and everything at the root level to the docker image
# COPY package*.json ./

# copy all files
COPY . .

# run npm i which is a production version of npm install
RUN npm install

EXPOSE 3000

# run the node server
CMD ["npm", "start"]