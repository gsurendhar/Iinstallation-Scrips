docker run --rm -d --name sonarqube -p 9000:9000 -p sonarqube



[
# Dockerfile

FROM sonarqube:latest
WORKDIR /app
COPY . .
EXPOSE 9000




run
 docker build --tag=sonarqube .
 docker run -ti sonarqube-custom
 ]
