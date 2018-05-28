package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the tbl_attendance database table.
 * 
 */
@Entity
@Table(name="tbl_attendance")
@NamedQuery(name="TblAttendance.findAll", query="SELECT t FROM TblAttendance t")
public class TblAttendance implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="att_id")
	private int attId;

	@Temporal(TemporalType.DATE)
	@Column(name="att_date")
	private Date attDate;

	private String status;

	@Column(name="train_id")
	private int trainId;

	@Column(name="user_id")
	private int userId;

	public TblAttendance() {
	}

	public int getAttId() {
		return this.attId;
	}

	public void setAttId(int attId) {
		this.attId = attId;
	}

	public Date getAttDate() {
		return this.attDate;
	}

	public void setAttDate(Date attDate) {
		this.attDate = attDate;
	}

	public String getStatus() {
		return this.status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public int getTrainId() {
		return this.trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}