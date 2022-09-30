FROM nginx:alpine
COPY . .

COPY ./ /usr/share/nginx/html

WORKDIR /usr/share/nginx/html
