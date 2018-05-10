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
	@Column(name="part_id")
	private int partId;

	@Column(name="train_id")
	private int trainId;

	@Column(name="user_id")
	private int userId;

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

}