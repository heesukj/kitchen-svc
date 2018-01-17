package com.heesuk.kitchen.repository;

import org.springframework.data.annotation.Id;

import java.util.List;

/**
 * Created by heesukjang on 12/21/17.
 */

public class Recipe {
    @Id private String id;

    private String title;
    private String koreanTitle;
    private String koreanTitlePron;
    private String imagePath;
    private List<String> description;
    private String category;
    private String totalTime;
    private String prepTime;
    private String cookTime;
    private String yield;
    private String level;
    private String caloriesPerServing;
    private List<String> ingredients;
    private List<String> directions;

    // getters and setters
    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getKoreanTitlePron() {
        return koreanTitlePron;
    }

    public void setKoreanTitlePron(String koreanTitlePron) {
        this.koreanTitlePron = koreanTitlePron;
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath;
    }

    public List<String> getDescription() {
        return description;
    }

    public void setDescription(List<String> description) {
        this.description = description;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getTotalTime() {
        return totalTime;
    }

    public void setTotalTime(String totalTime) {
        this.totalTime = totalTime;
    }

    public String getPrepTime() {
        return prepTime;
    }

    public void setPrepTime(String prepTime) {
        this.prepTime = prepTime;
    }


    public String getCookTime() {
        return cookTime;
    }

    public void setCookTime(String cookTime) {
        this.cookTime = cookTime;
    }

    public String getYield() {
        return yield;
    }

    public void setYield(String yield) {
        this.yield = yield;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getCaloriesPerServing() {
        return caloriesPerServing;
    }

    public void setCaloriesPerServing(String caloriesPerServing) {
        this.caloriesPerServing = caloriesPerServing;
    }

    public List<String> getIngredients() {
        return ingredients;
    }

    public void setIngredients(List<String> ingredients) {
        this.ingredients = ingredients;
    }

    public List<String> getDirections() {
        return directions;
    }

    public void setDirections(List<String> directions) {
        this.directions = directions;
    }

    public String getKoreanTitle() {
        return koreanTitle;
    }

    public void setKoreanTitle(String koreanTitle) {
        this.koreanTitle = koreanTitle;
    }
}

