package com.springboot.entities;

import java.io.Serializable;

import javax.persistence.*;


/**
 * The persistent class for the tbl_supervisor database table.
 * 
 */
@Entity
@Table(name="tbl_supervisor")
@NamedQuery(name="TblSupervisor.findAll", query="SELECT t FROM TblSupervisor t")
public class TblSupervisor implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="sv_id")
	private int svId;

	@Column(name="supervisor_id")
	private int supervisorId;
	
	@Column(name="user_id")
	private int userId;
	
	@Column(name="peerstatus")
	private String status;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public TblSupervisor() {
	}

	public int getSvId() {
		return svId;
	}

	public void setSvId(int svId) {
		this.svId = svId;
	}

	public int getSupervisorId() {
		return supervisorId;
	}

	public void setSupervisorId(int supervisorId) {
		this.supervisorId = supervisorId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}
