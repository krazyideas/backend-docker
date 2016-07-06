FROM java:8
WORKDIR /usr/src/myapp
RUN curl -o /usr/src/myapp/backend.war https://jitpack.io/com/github/krazyideas/backend/v0.0.3/backend-v0.0.3.war
EXPOSE 8080
CMD java -Dspring.datasource.url=jdbc:postgresql://postgres:5432/krazy -jar /usr/src/myapp/backend.war
