package com.springboot.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the tbl_answersaf database table.
 * 
 */
@Entity
@Table(name="tbl_answersaf")
@NamedQuery(name="TblAnswersaf.findAll", query="SELECT t FROM TblAnswersaf t")
public class TblAnswersaf implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="saf_id")
	private int safId;

	@Column(name="foruser_id")
	private int foruserId;
	

	@Column(name="byuser_id")
	private int byuserId;
	
	@GeneratedValue
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getSafId() {
		return safId;
	}

	public void setSafId(int safId) {
		this.safId = safId;
	}

	public int getForuserId() {
		return foruserId;
	}

	public void setForuserId(int foruserId) {
		this.foruserId = foruserId;
	}

	public int getByuserId() {
		return byuserId;
	}

	public void setByuserId(int byuserId) {
		this.byuserId = byuserId;
	}

	public TblAnswersaf() {
	}


}
