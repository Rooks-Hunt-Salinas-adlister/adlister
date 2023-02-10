package com.codeup.adlister.dao;


public class Adlist {

    private int id;

    private String title;

    private String username;

    private String description;

    private String image;

    private String categories;


    public Adlist(int id, String title, String username, String description, String image, String categories) {

        this.id = id;
        this.title = title;
        this.username = username;
        this.description = description;
        this.image = image;
        this.categories = categories;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategories() {
        return categories;
    }

    public void setCategories(String categories) {
        this.categories = categories;
    }

}