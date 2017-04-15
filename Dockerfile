FROM node:7-slim
ENV NODE_ENV production

#Create and set the working directory
RUN mkdir /var/www
WORKDIR /var/www/

#Copy all files to the working directory, except those excluded by .dockerignore
COPY ./ /var/www/

#Get all dependencies
RUN npm install

EXPOSE 3000

VOLUME ["/var/www/data"]

CMD ["npm", "start"]
