FROM ubuntu:22.04



ENV debian_frontend=nointeractive



RUN apt-get update && apt-get -y install nginx



COPY index.html /usr/share/nginx/html/



EXPOSE 8080

CMD ["nginx","-g","daemon off;"]
