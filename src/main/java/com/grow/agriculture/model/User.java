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
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
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

	public User addOtp(User user) {
		List<OTP> otp = new ArrayList<>();
		otp.add(user.getOtp());
		return user;
	}

	@PrePersist
	public void setCreatedOn() {
		this.createdOn = LocalDateTime.now(ZoneId.of("Asia/Calcutta"));
	}

	@PreUpdate
	public void setLastUpdatedOn() {
		this.lastUpdatedOn = LocalDateTime.now(ZoneId.of("Asia/Calcutta"));
	}
}
