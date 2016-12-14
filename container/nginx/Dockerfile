FROM nginx:1.9

COPY nginx.conf /etc/nginx/nginx.conf
COPY .htpasswd /etc/nginx/.htpasswd

CMD ["nginx", "-g", "daemon off;"]
