# Build stage
FROM nginx:alpine
WORKDIR /usr/share/nginx/html  
COPY /_work/sirr-eactapp-master/sirr-eactapp-master/build .


