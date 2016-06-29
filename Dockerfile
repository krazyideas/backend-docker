FROM java:8
WORKDIR /usr/src/myapp
RUN curl -o /usr/src/myapp/backend.war https://jitpack.io/com/github/krazyideas/backend/v0.0.2/backend-v0.0.2.war 
EXPOSE 8080
CMD java -jar /usr/src/myapp/backend.war
