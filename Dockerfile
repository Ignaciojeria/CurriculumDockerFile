FROM  nginx:alpine
LABEL maintainer="matteo.cappadonna@me.com"

RUN mkdir -p /var/run/nginx /var/log/nginx /var/cache/nginx && \
	chown -R nginx:0 /var/run/nginx /var/log/nginx /var/cache/nginx && \
	chmod -R g=u /var/run/nginx /var/log/nginx /var/cache/nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf
#COPY ./bin/uid_entrypoint /bin/uid_entrypoint



COPY ./index.html /usr/share/nginx/html
COPY ./index.css /usr/share/nginx/html

ENV PATH /usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENV NGINX_VERSION 1.13.8

USER nginx:nginx
EXPOSE 8000

#ENTRYPOINT ["/bin/uid_entrypoint"]
CMD ["nginx","-g","daemon off;"]

###  USO
# A) $docker build . -t curriculum:latest
# B) $ docker run -p 80:8000 {idImagen}