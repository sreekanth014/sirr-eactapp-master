# Build stage
FROM nginx:alpine
WORKDIR   /home/enfec/actions-runner/_work/sirr-eactapp-master/sirr-eactapp-master/build
COPY . /usr/share/nginx/html

