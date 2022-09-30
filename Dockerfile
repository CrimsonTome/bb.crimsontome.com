FROM nginx:alpine
COPY . .

COPY ./ /usr/share/nginx/html

WORKDIR /usr/share/nginx/html

FROM ubuntu:jammy as ubuntu
WORKDIR ./
COPY . .
RUN bash bb.sh rebuild

FROM nginx:alpine
WORKDIR ./
COPY . .
RUN rm -r /usr/share/nginx/html/
COPY --from=ubuntu ./ /usr/share/nginx/html/
