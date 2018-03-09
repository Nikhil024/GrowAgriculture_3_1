package com.grow.agriculture.model;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDate;

@Entity
@Table(name = "users")
public class User implements Serializable {
    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;
    @NotNull(message = "Please enter a name..!")
    private String name;
    @Column(name = "phone_number")
    @NotNull(message = "Please enter a Phone Number!")
    @Length(min = 10, max = 10, message = "Please enter a valid Phone Number!")
    private Long phoneNumber;
    @NotNull(message = "Please enter a password..!")
    @Length(min = 6, message = "Enter a minimum 6 characters..!")
    private String password;
    @Transient
    @NotNull(message = "Please enter a password..!")
    @Length(min = 6, message = "Enter a minimum 6 characters..!")
    private String confirmPassword;
    @Column(name = "date_of_birth")
    @NotNull(message = "Please enter a date of birth..!")
    private LocalDate dateOfBirth;
    @Column(name = "created_date")
    private LocalDate createdDate;

    public Integer getId() {
        return id;
    }

    public User setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getName() {
        return name;
    }

    public User setName(String name) {
        this.name = name;
        return this;
    }

    public Long getPhoneNumber() {
        return phoneNumber;
    }

    public User setPhoneNumber(Long phoneNumber) {
        this.phoneNumber = phoneNumber;
        return this;
    }

    public String getPassword() {
        return password;
    }

    public User setPassword(String password) {
        this.password = password;
        return this;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public User setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
        return this;
    }

    public LocalDate getDateOfBirth() {
        return dateOfBirth;
    }

    public User setDateOfBirth(LocalDate dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
        return this;
    }

    public LocalDate getCreatedDate() {
        return createdDate;
    }

    public User setCreatedDate(LocalDate createdDate) {
        this.createdDate = createdDate;
        return this;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", phoneNumber=" + phoneNumber +
                ", password='" + password + '\'' +
                ", confirmPassword='" + confirmPassword + '\'' +
                ", dateOfBirth=" + dateOfBirth +
                ", createdDate=" + createdDate +
                '}';
    }
}
