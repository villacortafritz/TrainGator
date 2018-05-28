package com.springboot.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the tbl_participant database table.
 * 
 */
@Entity
@Table(name="tbl_participant")
@NamedQuery(name="TblParticipant.findAll", query="SELECT t FROM TblParticipant t")
public class TblParticipant implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="part_id")
	private int partId;

	@Column(name="train_id")
	private int trainId;
	
	
	@Column(name="user_id")
	private int userId;
	
	@Column(name="user_email")
	private String userEmail;

	@Column(name="user_fname")
	private String userFname;

	@Column(name="user_lname")
	private String userLname;

	@Column(name="user_type")
	private String userType;

	public TblParticipant() {
	}

	public int getPartId() {
		return this.partId;
	}

	public void setPartId(int partId) {
		this.partId = partId;
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
	
	public String getUserEmail() {
		return this.userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserFname() {
		return this.userFname;
	}

	public void setUserFname(String userFname) {
		this.userFname = userFname;
	}

	public String getUserLname() {
		return this.userLname;
	}

	public void setUserLname(String userLname) {
		this.userLname = userLname;
	}

	public String getUserType() {
		return this.userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

}
