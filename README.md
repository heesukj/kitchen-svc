# kitchen-svc

REST service for Heesuk's Kitchen site

## Project details (libraries and services => technologies):
- DB: mongoDB  (NoSQL Database)
- server: Spring boot REST JPA (Java Persistence API) 
- UI: Angular 2

## Hosting (all cloud-based)- the way to run(deploy) those libraries and services so that our site is available in the internet:
- DB: mongoDB Atlas https://www.mongodb.com/cloud
- server : AWS Elastic Beanstock => we will deploy our spring boot rest jpa on AWS Elastic Beanstock
  - Details: https://aws.amazon.com/blogs/devops/deploying-a-spring-boot-application-on-aws-using-aws-elastic-bea...
- UI: AWS S3 web hosting
  - Details: https://johnlouros.com/blog/host-your-angular-app-in-aws-s3

To find out the version of Gradle (Gradle 3.5.1.): $ ./gradlew 
    
## Connect to the remote mongo db Altas

### Install Mongo Shell
Get the Mongo shell from https://downloads.mongodb.org/osx/mongodb-shell-osx-ssl-x86_64-3.4.10.tgz
Then copy to /usr/local/bin

    $ sudo cp ~/Downloads/mongodb-osx-x86_64-3.4.10/bin/mongo /usr/local/bin/

### Connect to the server  (replace <PASSWORD> with the admin password)

    $ mongo "mongodb://kitchen-cluster0-shard-00-00-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-01-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-02-o0us2.mongodb.net:27017/kitchendb?replicaSet=kitchen-cluster0-shard-0" --ssl --authenticationDatabase admin --username heesuk-admin --password <PASSWORD>
    

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

## Local Mongo DB Info
To run the local mongo database: $ mongod

To stop the server run:

    $ mongo
    $ use admin
    $ db.shutdownServer()

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

## Create a new database and collection / Insert Document
    > use kitchendb   => remote mongo db
    > db.createCollection(""recipe")
    > show dbs
    > db.recipe.insert({    => create a new doc(recipe) in recipe collection (collection name has to be "sigular", while REST endpoint has to be "plural" like recipes)
  	    title: 'California Rolls', 
  	    koreanTitle: '캘리포니아 롤',
  	    imagePath: '/images/california-roll.jpg',
  	    category: 'Japanese - Sushi', 
  	    totalTime: '1 hr 15 min', 
  	    prepTime: '50 min', 
  	    cookTime: '25 min', 
  	    yield: '6 serviings', 
  	    level: 'Advanced', 
  	    ingredients: ['3 1/3 cups rice', '5 1/3 tablespoons vinegar', '5 tablespoons sugar', '3 tablespoons salt', '10 sheets swaweed, three-quarterd', '1/2 pound imitation crab, cut into long, thin pieces','1/3 cup mayonnaise', '1 cucumber, seeded, and julienne', '1 avocado, peeled, seeded, and cut into long, thin pieces', '6 tablespoons flying fish roe', '1 tablespoon wasabi'],
  	    directions: ['Make Rice', 'Prepare Vegetables and Meat', 'Make a Roll']
    })

## Local Mongo:
database name: heesukdb
collection name: heesukKitchen

## Remote Mongo Atlas:
database name: kitchendb
collection name: recipe

## Connect to Remote Mongo Atlas:
    1) /resources/application.properties
            spring.data.mongodb.uri=mongodb://kitchen-svc-ro:kitch-rest-read-only@kitchen-cluster0-shard-00-00-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-01-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-02-o0us2.mongodb.net:27017/kitchendb?ssl=true&replicaSet=kitchen-cluster0-shard-0&authSource=admin
    
        Read only user Atlas => username: kitchen-svc-ro, password: kitch-rest-read-only,  change "test?" to "kitchendb" our remote mongo db name
    
    2) URL=> localhost:8080/recipes  ==> displays all the inserted docs (recipes)
    3) push all the changes to github:
        $ git status -> git add -u -> git commit -m "connect to remote mongo" -> git push origin master
        
        
## Server Deployment

REST service is deployed to AWS Elastic Beanstalk (https://aws.amazon.com)

1. create new application following instructions (except MySQL part) from https://aws.amazon.com/blogs/devops/deploying-a-spring-boot-application-on-aws-using-aws-elastic-beanstalk/
2. Under configuration ->  Software Configuration added 2 properties
    + **SERVER_PORT** => 5000
        + sets spring boot to use 5000 instead of the default 8080
    + **SPRING_DATA_MONGODB_URI** =>  mongodb://<USERNAME>:<PASSWORD>@kitchen-cluster0-shard-00-00-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-01-o0us2.mongodb.net:27017,kitchen-cluster0-shard-00-02-o0us2.mongodb.net:27017/kitchendb?ssl=true&replicaSet=kitchen-cluster0-shard-0&authSource=admin
        + sets the spring.data.mongodb.uri so that we can connect to the mongo db 

## Deploy a new version of the REST service
1. After making code changes, test, create merge request, push to master
2. Update the version in build.gradle, add, commit, push to master
3. Run ./gradlew clean bootRepackage
4. Go to AWS Elasic Beanstalk -> kitchen-svc -> kitchen-svc-prod 
5. On the Dashboard page, click button: Update and Deploy
6. Choose file: select the fat jar build/libs/kitchen-svc.*.jar
7. Click Deploy