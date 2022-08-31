#FROM nginx
#COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
#COPY dist/ /usr/share/nginx/html

FROM nginx
COPY . .