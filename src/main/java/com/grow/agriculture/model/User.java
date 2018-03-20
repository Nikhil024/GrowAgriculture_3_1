package com.grow.agriculture.model;

import org.hibernate.validator.constraints.Length;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import java.io.Serializable;
import java.time.LocalDate;
import java.util.List;

@Entity
@Table(name = "users")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "users_id")
	private Integer id;
	@Column(name = "phone_number", unique = true)
	@NotNull(message = "Please enter a Phone Number!")
	private Long phoneNumber;
	@NotNull(message = "Please enter a password..!")
	@Length(min = 6, message = "Enter a minimum 6 characters..!")
	private String password;
	@Transient
	@NotNull(message = "Please enter a password..!")
	@Length(min = 6, message = "Enter a minimum 6 characters..!")
	private String confirmPassword;
	@Column(name = "user_type")
	private String userType;

	@Column(name = "otp_verified")
	private boolean otpVerified;

	@Column(name = "created_date")
	private LocalDate createdDate;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(Long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public boolean isOtpVerified() {
		return otpVerified;
	}

	public void setOtpVerified(boolean otpVerified) {
		this.otpVerified = otpVerified;
	}

	public LocalDate getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDate createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", phoneNumber=" + phoneNumber + ", password=" + password + ", confirmPassword="
				+ confirmPassword + ", userType=" + userType + ", otpVerified=" + otpVerified + ", createdDate="
				+ createdDate + "]";
	}
}
