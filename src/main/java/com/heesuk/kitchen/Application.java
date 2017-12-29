package com.heesuk.kitchen;

/**
 * Created by heesukjang on 12/18/17.
 * use Spring’s support for embedding the Tomcat servlet container as the HTTP runtime
 *
 @SpringBootApplication is a convenience annotation that adds all of the following:
 @Configuration tags the class as a source of bean definitions for the application context.
 @EnableAutoConfiguration tells Spring Boot to start adding beans based on classpath settings, other beans, and various property settings.
 Normally you would add @EnableWebMvc for a Spring MVC app, but Spring Boot adds it automatically when it sees spring-webmvc on the classpath.
 This flags the application as a web application and activates key behaviors such as setting up a DispatcherServlet.
 @ComponentScan tells Spring to look for other components, configurations, and services in the com.heesuk.kitchen.hello package, allowing it to find the controllers.
 The main() method uses Spring Boot’s SpringApplication.run() method to launch an application.
 */

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Application {

    public static void main(String[] args) {
        SpringApplication.run(Application.class, args);
    }
}
