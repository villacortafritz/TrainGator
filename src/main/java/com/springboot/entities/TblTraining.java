package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;
import java.util.Date;


/**
 * The persistent class for the tbl_training database table.
 * 
 */
@Entity
@Table(name="tbl_training")
@NamedQuery(name="TblTraining.findAll", query="SELECT t FROM TblTraining t")
public class TblTraining implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="train_id")
	private int trainId;

	@Temporal(TemporalType.DATE)
	@Column(name="train_datestart")
	private Date trainDatestart;
	
	@Temporal(TemporalType.DATE)
	@Column(name="train_dateend")
	private Date trainDateend;
	
	@Column(name="train_timestart")
	private String trainTimestart;
	
	@Column(name="train_timeend")
	private String trainTimeend;
	
	@Column(name="train_courseoutline")
	private String trainCourseoutline;
	
	@Column(name="train_cat")
	private String trainCat;
	
	@Column(name="train_name")
	private String trainName;
	
	@Column(name="train_status")
	private int trainStatus;
	
	public int getTrainStatus() {
		return trainStatus;
	}

	public void setTrainStatus(int trainStatus) {
		this.trainStatus = trainStatus;
	}

	public String getTrainCat() {
		return trainCat;
	}

	public void setTrainCat(String trainCat) {
		this.trainCat = trainCat;
	}

	public String getTrainName() {
		return trainName;
	}

	public void setTrainName(String trainName) {
		this.trainName = trainName;
	}

	public TblTraining() {
	}

	public int getTrainId() {
		return this.trainId;
	}

	public void setTrainId(int trainId) {
		this.trainId = trainId;
	}
	
	public Date getTrainDatestart() {
		return this.trainDatestart;
	}

	public void setTrainDatestart(Date trainDatestart) {
		this.trainDatestart = trainDatestart;
	}
	
	public Date getTrainDateend() {
		return this.trainDateend;
	}
	
	public void setTrainDateend(Date trainDateend) {
		this.trainDateend = trainDateend;
	}
	
	public String getTrainTimestart() {
		return this.trainTimestart;
	}

	public void setTrainTimestart(String trainTimestart) {
		this.trainTimestart = trainTimestart;
	}
	
	public String getTrainTimeend() {
		return this.trainTimeend;
	}

	public void setTrainTimeend(String trainTimeend) {
		this.trainTimeend = trainTimeend;
	}
	
	public String getTrainCourseoutline() {
		return this.trainCourseoutline;
	}

	public void setTrainCourseoutline(String trainCourseoutline) {
		this.trainCourseoutline = trainCourseoutline;
	}
}