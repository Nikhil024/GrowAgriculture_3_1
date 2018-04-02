package com.grow.agriculture.model;

import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

@Entity
@Table(name = "user_details")
public class UserDetails implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy =GenerationType.SEQUENCE)
	private Long id;
	@Column(name = "first_name")
	private String firstName;
	@Column(name = "last_name")
	private String lastName;
	private String address;
	@Column(name = "about_me")
	private String aboutMe;
	@Column(name = "date_of_birth")
	private LocalDate dateOfBirth;
	@OneToOne
	@JoinColumn(name="user_id", referencedColumnName="user_id")
	private User user;
	@Column(name = "created_date")
	private LocalDateTime createdOn;
	@Column(name = "lastupdate_date")
	private LocalDateTime lastUpdatedOn;
	
	public Long getId() {
		return id;
	}
	public UserDetails setId(Long id) {
		this.id = id;
		return this;
	}
	public String getFirstName() {
		return firstName;
	}
	public UserDetails setFirstName(String firstName) {
		this.firstName = firstName;
		return this;
	}
	public String getLastName() {
		return lastName;
	}
	public UserDetails setLastName(String lastName) {
		this.lastName = lastName;
		return this;
	}
	public String getAddress() {
		return address;
	}
	public UserDetails setAddress(String address) {
		this.address = address;
		return this;
	}
	public String getAboutMe() {
		return aboutMe;
	}
	public UserDetails setAboutMe(String aboutMe) {
		this.aboutMe = aboutMe;
		return this;
	}
	public LocalDate getDateOfBirth() {
		return dateOfBirth;
	}
	public UserDetails setDateOfBirth(LocalDate dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
		return this;
	}
	public User getUser() {
		return user;
	}
	public UserDetails setUser(User user) {
		this.user = user;
		return this;
	}
	public LocalDateTime getCreatedOn() {
		return createdOn;
	}
	@PrePersist
	public void setCreatedOn() {
		this.createdOn = LocalDateTime.now(ZoneId.of("Asia/Calcutta"));
	}
	public LocalDateTime getLastUpdatedOn() {
		return lastUpdatedOn;
	}
	@PreUpdate
	public void setLastUpdatedOn() {
		this.lastUpdatedOn = LocalDateTime.now(ZoneId.of("Asia/Calcutta"));
	}
	
	@Override
	public String toString() {
		return "UserDetails [id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", address=" + address
				+ ", aboutMe=" + aboutMe + ", dateOfBirth=" + dateOfBirth + ", user=" + user + ", createdOn="
				+ createdOn + ", lastUpdatedOn=" + lastUpdatedOn + "]";
	}
}
