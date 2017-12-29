//package com.heesuk.kitchen.hello;
//
//import org.springframework.data.mongodb.repository.MongoRepository;
//import org.springframework.data.repository.query.Param;
//import org.springframework.data.rest.core.annotation.RepositoryRestResource;
//
//import java.util.List;
//
///**
// * Created by heesukjang on 12/17/17.
// *  It gets these operations by extending  MongoRepository, which in turn extends the PagingAndSortingRepository interface
// * At runtime, Spring Data REST will create an implementation of this interface automatically.
// * Then it will use the @RepositoryRestResource annotation to direct Spring MVC
// * to create RESTful endpoints at "/people"s
// *
// * defined a custom query to retrieve a list of Person objects based on the lastName
// */
//
//@RepositoryRestResource(collectionResourceRel = "people", path = "people")
//public interface PersonRepository extends MongoRepository<Person, String> {
//    List<Person> findByLastName(@Param("name") String name);
//
//}
