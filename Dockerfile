FROM twalter/openshift-nginx

COPY ./index.html /usr/share/nginx/html
COPY ./index.css /usr/share/nginx/html



EXPOSE 8081

CMD ["nginx","-g","daemon off;"]

###  USO
# A) $docker build . -t curriculum:latest
# B) $ docker run -p 80:8000 {idImagen}