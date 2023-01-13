FROM node:16.17.1
WORKDIR /app
COPY package.json /app/
RUN npm install 
EXPOSE 8125
COPY server.js public /app/
CMD [ "node", "server.js" ]

# docker build --tag=css-cdn -f Dockerfile . 


