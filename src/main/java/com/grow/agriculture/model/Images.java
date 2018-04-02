package com.grow.agriculture.model;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Arrays;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;

import com.grow.agriculture.enumuration.ImageType;

@Entity
public class Images implements Serializable{
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE)
	private Long id;
	private String name;
	@Lob
	private Byte[] image;
	@Column(name = "image_type")
	@Enumerated(value = EnumType.STRING)
	private ImageType imageType;
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
	public Images setId(Long id) {
		this.id = id;
		return this;
	}
	public String getName() {
		return name;
	}
	public Images setName(String name) {
		this.name = name;
		return this;
	}
	public Byte[] getImage() {
		return image;
	}
	public Images setImage(Byte[] image) {
		this.image = image;
		return this;
	}
	public ImageType getImageType() {
		return imageType;
	}
	public Images setImageType(ImageType imageType) {
		this.imageType = imageType;
		return this;
	}
	public User getUser() {
		return user;
	}
	public Images setUser(User user) {
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
		return "Images [id=" + id + ", name=" + name + ", image=" + Arrays.toString(image) + ", imageType=" + imageType
				+ ", userId=" + user + ", createdOn=" + createdOn + ", lastUpdatedOn=" + lastUpdatedOn + "]";
	}
}
