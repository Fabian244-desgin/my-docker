FROM ubuntu:22.04



ENV debian_frontend=nointeractive



RUN apt-get update && apt-get -y install nginx



COPY ./web /var/www/htmlL



EXPOSE 8080

CMD ["nginx","-g","daemon off;"]
