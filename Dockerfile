FROM nginx:alpine

COPY /build /usr/share/ngnix/html

EXPOSE 90

CMD ["nginx", "-g", "daemon off,"]
