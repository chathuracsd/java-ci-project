FROM openjdk:latest
WORKDIR /usr/src/app
COPY . /usr/src/app
RUN javac -cp junit-4.12.jar:hamcrest-all-1.3.jar:src:. src/test/com/example/AppTest.java src/main/com/example/App.java
EXPOSE 8080
CMD ["java", "-cp", "junit-4.12.jar:hamcrest-all-1.3.jar:src:.", "org.junit.runner.JUnitCore", "com.example.AppTest"]

