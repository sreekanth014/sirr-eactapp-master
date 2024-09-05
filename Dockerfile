# Build stage
FROM nginx:alpine
COPY /home/enfec/actions-runner/_work/sirr-eactapp-master/sirr-eactapp-master/build /usr/share/nginx/html

