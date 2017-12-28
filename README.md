# kitchen-svc

REST service for Heesuk's Kitchen site

## Project details (libraries and services => technologies):
- DB: mongoDB  (NoSQL Database)
- server: Spring boot REST JPA 
- UI: Angular 2

## Hosting (all cloud-based)- the way to run(deploy) those libraries and services so that our site is available in the internet:
- DB: mongoDB Atlas https://www.mongodb.com/cloud
- server : AWS Elastic Beanstock => we will deploy our spring boot rest jpa on AWS Elastic Beanstock
  - Details: https://aws.amazon.com/blogs/devops/deploying-a-spring-boot-application-on-aws-using-aws-elastic-bea...
- UI: AWS S3 web hosting
  - Details: https://johnlouros.com/blog/host-your-angular-app-in-aws-s3

To find out the version of Gradle (Gradle 3.5.1.): $ ./gradlew 

## Mongo DB Info
To run the mongo database: $ mongod

To stop the server run:
    `mongo`
    `use admin`
    `db.shutdownServer()`

## Running the REST service
To run the application using Gradle: $ ./gradlew bootrun

The command line URL: $ curl http://localhost:8080/people
    curl -i -X POST -H "Content-Type:application/json" -d "{  \"firstName\" : \"Frodo\",  \"lastName\" : \"Baggins\" }" http://localhost:8080/people
    curl -X PUT -H "Content-Type:application/json" -d "{ \"firstName\": \"Bilbo\", \"lastName\": \"Baggins\" }" http://localhost:8080/people/53149b8e3004990b1af9f229
    curl -X PATCH -H "Content-Type:application/json" -d "{ \"firstName\": \"Bilbo Jr.\" }" http://localhost:8080/people/53149b8e3004990b1af9f229
    curl -X DELETE http://localhost:8080/people/53149b8e3004990b1af9f229
<!-- -i ensures you can see the response message including the headers. The URI of the newly created Person is shown    
     -X POST signals this a POST used to create a new entry    
     -H "Content-Type:application/json" sets the content type so the application knows the payload contains a JSON object    
     -d '{ "firstName" : "Frodo", "lastName" : "Baggins" }' is the data being sent  -->     
<!-- PUT replaces an entire record. Fields not supplied will be replaced with null. 
      PATCH can be used to update a subset of items.-->
<!--A very convenient aspect of this hypermedia-driven interface is how you can discover all the RESTful endpoints using curl (or whatever REST client you are using). 
    There is no need to exchange a formal contract or interface document with your customers.-->
<!--Hypermedia As The Engine Of Application State (HATEOAS) is a constraint of the REST application architecture 
    that distinguishes it from other network application architectures.-->
<!--According to the Richardson Maturity Model, HATEOAS is considered the final level of REST. 
    This means that each link is presumed to implement the standard REST verbs of GET, POST, PUT, and DELETE (or a subset). 
    Thus providing the links as shown above gives the client the information they need to navigate the service.-->
<!--Spring Data REST uses the HAL format for JSON output. 
    It is flexible and offers a convenient way to supply links adjacent to the data that is served.-->
To start to mongo database => mongo database wants to use "/data/db" to store all data in
    $ sudo mkdir -p /data/db   ===> sudo is like "superuser = root"
    $ ls -al /data/db
    $ sudo chown heesukjang /data/db    ===> chown = change the owner (user)
    $ sudo chown heesukjang:staff /data/db
    $ mongod

To get into mongo shell command:
    Heesuks-MacBook-Pro:heesuk-kitchen heesukjang$ mongo

mongo database tutorial: https://www.tutorialspoint.com/mongodb/mongodb_create_database.htm

Steps to follow:
1. create 'hello world' rest service up and running 1st following https://spring.io/guides/gs/accessing-mongodb-data-rest/

