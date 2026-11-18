# use node:16 as the base image
From node:16

#set the app folder 
WORKDIR /app

#copy the package files 
COPY package*.json ./

#Install dependencies
RUN npm install

#copy the rest of the files
COPY . .

#open port 3000 for the app
EXPOSE 3000

#run the app
CMD ["npm", "start"]