package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the tbl_formresults database table.
 * 
 */
@Entity
@Table(name="tbl_formresults")
@NamedQuery(name="TblFormresult.findAll", query="SELECT t FROM TblFormresult t")
public class TblFormresult implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="res_id")
	private int resId;

	@Column(name="fd_id")
	private int fdId;

	@Column(name="res_data")
	private String resData;

	@Temporal(TemporalType.DATE)
	@Column(name="res_date")
	private Date resDate;

	@Column(name="res_peer")
	private int resPeer;

	@Column(name="res_status")
	private String resStatus;

	@Column(name="res_sv")
	private int resSv;

	@Column(name="train_id")
	private int trainId;

	public TblFormresult() {
	}

	public int getResId() {
		return this.resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public int getFdId() {
		return this.fdId;
	}

	public void setFdId(int fdId) {
		this.fdId = fdId;
	}

	public String getResData() {
		return this.resData;
	}

	public void setResData(String resData) {
		this.resData = resData;
	}

	public Date getResDate() {
		return this.resDate;
	}

	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}

	public int getResPeer() {
		return this.resPeer;
	}

	public void setResPeer(int resPeer) {
		this.resPeer = resPeer;
	}

	public String getResStatus() {
		return this.resStatus;
	}

	public void setResStatus(String resStatus) {
		this.resStatus = resStatus;
	}

	public int getResSv() {
		return this.resSv;
	}

	public void setResSv(int resSv) {
		this.resSv = resSv;
	}

	public int getTrainId() {
		return this.trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

}