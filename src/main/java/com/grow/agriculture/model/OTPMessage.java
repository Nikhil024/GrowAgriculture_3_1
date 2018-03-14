package com.grow.agriculture.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "otp")
public class OTPMessage implements Serializable {

	/**
	 *  @Author Nikhil M
	 */
	private static final long serialVersionUID = 1L;
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "otp_id")
	private int id;

	private String otp;
	
	@Column(name = "session_id")
	private String sessionId;
	
	private String status;

	@Column(name = "user_id")
	private int userId;

	public int getId() {
		return id;
	}

	public OTPMessage setId(int id) {
		this.id = id;
		return this;
	}

	public String getOtp() {
		return otp;
	}

	public OTPMessage setOtp(String otp) {
		this.otp = otp;
		return this;
	}

	public String getSessionId() {
		return sessionId;
	}

	public OTPMessage setSessionId(String sessionId) {
		this.sessionId = sessionId;
		return this;
	}

	public String getStatus() {
		return status;
	}

	public OTPMessage setStatus(String status) {
		this.status = status;
		return this;
	}

	public int getUserId() {
		return userId;
	}

	public OTPMessage setUserId(int userId) {
		this.userId = userId;
		return this;
	}

	@Override
	public String toString() {
		return "OTPMessage [id=" + id + ", otp=" + otp + ", sessionId=" + sessionId + ", status=" + status + ", userId="
				+ userId + "]";
	}
}
