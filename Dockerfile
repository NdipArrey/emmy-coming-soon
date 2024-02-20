FROM nginx:alpine

COPY /build /usr/share/ngnix/html

EXPOSE 90

