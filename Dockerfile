FROM nginx:latest
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY dist /usr/share/nginx/html
RUN cd /usr/share/nginx && ls
#RUN chown -R 0755 /usr/share/nginx/html/*
RUN chmod -R 775 /usr/share/nginx/html/*
#RUN cd /usr/share/nginx/html && chmod 644 *

