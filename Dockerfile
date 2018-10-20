FROM node:carbon

#Create node-server directory
WORKDIR /app

#Copy node-server dependencies both package.json and package-lock.json
COPY ${pwd}/package*.json ./

#install node modules
RUN npm install

# Copy HOST Directory to Container Directory
COPY src /app

#Expose port 

EXPOSE 8080
# run command
CMD ["node", "server.js"]

