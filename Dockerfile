FROM node:fermium-alpine3.15
ENV NODE_ENV=prod
RUN mkdir -p /opt/app
COPY app/* /opt/app
WORKDIR /opt/app
EXPOSE 3000
RUN npm install
CMD ["node", "server.js"]

