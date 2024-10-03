# USE the Official image as a parent image

# Description: Dockerfile for the client side of the MERN stack application


# Use the official image as a parent image
FROM node:18.9.1

# set the working directory
WORKDIR /app

#COPY the file from your host to your current location
COPY package.json .

# RUN the command inside your image filesystem
RUN npm command

# Inform docker that the container inside your image filesystem
EXPOSE 5173

# Copy the rest of your app's source code from your host to your image filesystem
COPY . .

#RUN the specified command within the container
CMD [ "npm", "run", "dev" ]