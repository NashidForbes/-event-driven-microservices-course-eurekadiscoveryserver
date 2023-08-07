FROM bellsoft/liberica-runtime-container:jdk-17-slim-musl
LABEL authors="Nash"
# Expose internal port 8761
EXPOSE 8761
WORKDIR /app
COPY build/libs/*SNAPSHOT.jar /app/springbootify.jar
ENTRYPOINT ["java","-jar","/app/springbootify.jar"]