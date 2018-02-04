package com.heesuk.kitchen.repository;

import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

import java.util.List;

/**
 * Created by heesukjang on 12/21/17.
 */

@RepositoryRestResource(collectionResourceRel = "recipes", path = "recipes")
public interface RecipeRepository extends MongoRepository<Recipe, String> {

    List<Recipe> findByTitle(@Param("title") String title);

    List<Recipe> findByTitleIgnoreCaseContaining(@Param("title") String title);

    List<Recipe> findBykoreanTitleIgnoreCase(@Param("koreanTitle") String koreanTitle);

    List<Recipe> findBykoreanTitlePronIgnoreCase(@Param("koreanTitlePron") String koreanTitlePron);

    List<Recipe> findByCategoryIgnoreCase(@Param("category") String category);


}

