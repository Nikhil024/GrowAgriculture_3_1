package com.grow.agriculture.model;

import java.io.Serializable;
import java.time.LocalDate;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "otp")
public class OTPMessage implements Serializable {

	/**
	 * @Author Nikhil M
	 */
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "otp_id")
	private int id;

	@Column(name = "otp_value")
	private String otpValue;

	@Column(name = "session_id")
	private String sessionId;

	private String status;
	private int tries;

	@OneToOne
	@NotNull
	@JoinColumn(name = "users_id", referencedColumnName = "users_id")
	private User user;

	@Column(name = "created_date")
	private LocalDate createdDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getOtpValue() {
		return otpValue;
	}

	public void setOtpValue(String otpValue) {
		this.otpValue = otpValue;
	}

	public String getSessionId() {
		return sessionId;
	}

	public void setSessionId(String sessionId) {
		this.sessionId = sessionId;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getTries() {
		return tries;
	}

	public void setTries(int tries) {
		this.tries = tries;
	}

	public LocalDate getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(LocalDate createdDate) {
		this.createdDate = createdDate;
	}

	@Override
	public String toString() {
		return "OTPMessage [id=" + id + ", otpValue=" + otpValue + ", sessionId=" + sessionId + ", status=" + status
				+ ", tries=" + tries + ", user=" + user + ", createdDate=" + createdDate + "]";
	}
}
