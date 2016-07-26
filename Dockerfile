FROM node:6.2.2

# Setup working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Run npm install (separate step so can be cached)
COPY package.json /usr/src/app/
RUN npm set progress=false
RUN npm install

# Copy over source
COPY . /usr/src/app

CMD ["npm", "test"]
# CMD ["node_modules/.bin/jest"]
