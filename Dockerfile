FROM nginx

ARG SERVICE

RUN sh -c 'echo "<h1>${SERVICE} Service Running</h1>" > /usr/share/nginx/html/index.html'
