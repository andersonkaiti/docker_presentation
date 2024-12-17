FROM nginx:latest
LABEL maintainer = "Victor"
ENV PORT=5000
COPY ./docker/nginx.conf /etc/nginx/nginx.conf
EXPOSE $PORT
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]