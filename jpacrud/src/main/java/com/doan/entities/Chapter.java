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
@Table(name = "chapter")
public class Chapter {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@Column(name = "Name")
	private String name;
	@Column(name = "Status")
	private int status;
	
	@ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "idcomic")
    private Comic idcomic;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public Comic getIdcomic() {
		return idcomic;
	}
	public void setIdcomic(Comic idcomic) {
		this.idcomic = idcomic;
	}
	
}
