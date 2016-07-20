SpringBoot Environment
======================

Simple development environment for Spring Boot

## Requirements

* JDK 8
* Apache Maven 3.0.5

### Sample in Groovy

<pre>
@RestController
class ThisWillActuallyRun {
        @RequestMapping("/")
        String home() {
                "Hello SpringBoot!"
        }
}
</pre>

Run with `spring run app.groovy`

Test application by hitting `localhost:8080`

### Maven Dependency Sample

```
<?xml version="1.0" encoding="UTF-8"?>
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
    xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example</groupId>
    <artifactId>myproject</artifactId>
    <version>0.0.1-SNAPSHOT</version>

    <parent>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-parent</artifactId>
        <version>1.1.4.RELEASE</version>
    </parent>

    <!-- Additional lines to be added here... -->

</project>
```

Run with `mvn pacakge` to retrieve and build the basic JAR

### Dependencies

* [Official JDK Image](https://hub.docker.com/_/java/)
* [Official Spring Framework](http://spring.io/)
* [Groovy Site](http://groovy.codehaus.org/)
