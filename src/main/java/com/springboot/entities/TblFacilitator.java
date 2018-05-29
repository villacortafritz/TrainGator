package com.springboot.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the tbl_participant database table.
 * 
 */
@Entity
@Table(name="tbl_facilitator")
@NamedQuery(name="TblFacilitator.findAll", query="SELECT t FROM TblFacilitator t")
public class TblFacilitator implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="faci_id")
	private int faciId;

	@Column(name="train_id")
	private int trainId;
	

	@Column(name="user_id")
	private int userId;

	public TblFacilitator() {
	}

	public int getfaciId() {
		return this.faciId;
	}

	public void setfaciId(int faciId) {
		this.faciId = faciId;
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
	
	/*public String getUserEmail() {
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
	}*/

}
