package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_traibreq database table.
 * 
 */
@Entity
@Table(name="tbl_traibreq")
@NamedQuery(name="TblTraibreq.findAll", query="SELECT t FROM TblTraibreq t")
public class TblTraibreq implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="req_id")
	private int reqId;

	@Column(name="train_id")
	private int trainId;

	@Column(name="user_id")
	private int userId;

	public TblTraibreq() {
	}

	public int getReqId() {
		return this.reqId;
	}

	public void setReqId(int reqId) {
		this.reqId = reqId;
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