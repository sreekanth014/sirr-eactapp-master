FROM alpine/git as repo


WORKDIR /app
RUN git clone https://github.com/sreekanth014/sirr-eactapp-master.git

FROM node:latest as build
WORKDIR /app
COPY --from=repo /app/sirr-eactapp-master  /app 
RUN npm install
RUN npm build

FROM nginx:alpine
WORKDIR /usr/share/nginx/html 
COPY --from=build /app/build .
