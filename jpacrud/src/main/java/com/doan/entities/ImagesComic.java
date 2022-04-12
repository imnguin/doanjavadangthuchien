package com.doan.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name = "images")
public class ImagesComic {
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@Column(name = "img")
	private String img;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idchapter")
    private Chapter idchapter;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public Chapter getIdchapter() {
		return idchapter;
	}

	public void setIdchapter(Chapter idchapter) {
		this.idchapter = idchapter;
	}
	
}