package com.grow.agriculture.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;

import com.grow.agriculture.enumuration.UserType;

@Entity
@Table(name = "users")
public class User implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name = "user_id")
	private Long id;

	@Column(name = "phone_number",unique = true)
	@NotNull
	private Long phoneNumber;
	private String password;
	@Transient
	private String confirmPassword;
	@Column(name = "otp_verified")
	private Boolean otpVerified;
	@Column(name = "user_type")
	@Enumerated(value = EnumType.STRING)
	private UserType userType;
	@Transient
	private OTP otp;
	@Transient
	private Images images;
	@OneToMany(cascade = CascadeType.ALL, targetEntity = OTP.class, mappedBy = "user")
	private List<OTP> otpList;
	@OneToMany(cascade = CascadeType.ALL, targetEntity = Images.class, mappedBy = "user")
	private List<Images> imagesList;
	@OneToOne(cascade = CascadeType.ALL, mappedBy = "user")
	private UserDetails userDetails;
	@Column(name = "created_date")
	private LocalDateTime createdOn;
	@Column(name = "lastupdate_date")
	private LocalDateTime lastUpdatedOn;

	public Long getId() {
		return id;
	}

	public User setId(Long id) {
		this.id = id;
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

	public Boolean getOtpVerified() {
		return otpVerified;
	}

	public User setOtpVerified(Boolean otpVerified) {
		this.otpVerified = otpVerified;
		return this;
	}

	public UserType getUserType() {
		return userType;
	}

	public User setUserType(UserType userType) {
		this.userType = userType;
		return this;
	}

	public OTP getOtp() {
		return otp;
	}

	public User setOtp(OTP otp) {
		this.otp = otp;
		return this;
	}

	public Images getImages() {
		return images;
	}

	public User setImages(Images images) {
		this.images = images;
		return this;
	}

	public List<OTP> getOtpList() {
		return otpList;
	}

	public User setOtpList(List<OTP> otpList) {
		this.otpList = otpList;
		return this;
	}

	public List<Images> getImagesList() {
		return imagesList;
	}

	public User setImagesList(List<Images> imagesList) {
		this.imagesList = imagesList;
		return this;
	}

	public UserDetails getUserDetails() {
		return userDetails;
	}

	public User setUserDetails(UserDetails userDetails) {
		this.userDetails = userDetails;
		return this;
	}

	public LocalDateTime getCreatedOn() {
		return createdOn;
	}
	
	public User addOtp(User user) {
		List<OTP> otp = new ArrayList<>();
		otp.add(user.getOtp());
		return user;
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

	
	public User addOTP(OTP otp, User user) {
		otp.setUser(user);
		this.otpList.add(otp);
		return this;
	}

	public User addImages(Images images) {
		images.setUser(this);
		this.imagesList.add(images);
		return this;

	}

	public User addImages() {
		images.setUser(this);
		this.imagesList.add(getImages());
		return this;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", phoneNumber=" + phoneNumber + ", password=" + password + ", confirmPassword="
				+ confirmPassword + ", otpVerified=" + otpVerified + ", userType=" + userType + ", createdOn="
				+ createdOn + ", lastUpdatedOn=" + lastUpdatedOn + ", otp=" + otp + ", images=" + images + ", otpList="
				+ otpList + ", imagesList=" + imagesList + ", userDetails=" + userDetails + "]";
	}
}
