package com.grow.agriculture.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.ZoneId;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

@Entity
public class OTP implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy =GenerationType.SEQUENCE)
	private Long id;
	private String value;
	@Column(name = "session_id")
	private String sessionId;
	private Integer tries;
	private String status;
	@ManyToOne
	@JoinColumn(name="user_id", referencedColumnName="user_id")
	private User user;
	@Column(name = "created_date")
	private LocalDateTime createdOn;
	@Column(name = "lastupdate_date")
	private LocalDateTime lastUpdatedOn;
	
	public Long getId() {
		return id;
	}
	public OTP setId(Long id) {
		this.id = id;
		return this;
	}
	public String getValue() {
		return value;
	}
	public OTP setValue(String value) {
		this.value = value;
		return this;
	}
	public String getSessionId() {
		return sessionId;
	}
	public OTP setSessionId(String sessionId) {
		this.sessionId = sessionId;
		return this;
	}
	public Integer getTries() {
		return tries;
	}
	public OTP setTries(Integer tries) {
		this.tries = tries;
		return this;
	}
	public String getStatus() {
		return status;
	}
	public OTP setStatus(String status) {
		this.status = status;
		return this;
	}
	
	public User getUser() {
		return user;
	}
	public OTP setUser(User userId) {
		this.user = userId;
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
		return "OTP [id=" + id + ", value=" + value + ", sessionId=" + sessionId + ", tries=" + tries + ", status="
				+ status + ", user=" + user + ", createdOn=" + createdOn + ", lastUpdatedOn=" + lastUpdatedOn + "]";
	}
}
