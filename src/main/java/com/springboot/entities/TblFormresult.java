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
	@GeneratedValue
	@Column(name="res_id")
	private int resId;

	@Column(name="user_id")
	private int userId;

	@Column(name="res_data")
	private String resData;

	@Temporal(TemporalType.DATE)
	@Column(name="res_date")
	private Date resDate;

	@Column(name="quest_id")
	private int questId;

	@Column(name="ans_id")
	private int ansId;

	public int getResId() {
		return resId;
	}

	public void setResId(int resId) {
		this.resId = resId;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getResData() {
		return resData;
	}

	public void setResData(String resData) {
		this.resData = resData;
	}

	public Date getResDate() {
		return resDate;
	}

	public void setResDate(Date resDate) {
		this.resDate = resDate;
	}

	public int getQuestId() {
		return questId;
	}

	public void setQuestId(int questId) {
		this.questId = questId;
	}

	public int getAnsId() {
		return ansId;
	}

	public void setAnsId(int ansId) {
		this.ansId = ansId;
	}

	public String getResType() {
		return resType;
	}

	public void setResType(String resType) {
		this.resType = resType;
	}

	public int getTrainId() {
		return trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	@Column(name="res_type")
	private String resType;

	@Column(name="train_id")
	private int trainId;

	public TblFormresult() {
	}



}