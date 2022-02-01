package com.user.entity;

public class User {
    private int id;
    private String name;
    private String email;
    private String gender;
    private String age;
    private String phno;

    public User(int id, String name, String email, String gender, String age, String phno) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.age = age;
        this.phno = phno;
    }

    public User(String name, String email, String gender, String age, String phno) {
        this.name = name;
        this.email = email;
        this.gender = gender;
        this.age = age;
        this.phno = phno;
    }

    public User() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getPhno() {
        return phno;
    }

    public void setPhno(String phno) {
        this.phno = phno;
    }
    
}
