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
	
	@Column(name="train_courseobjective")
	private String trainCourseobjective;
	
	@Column(name="train_courseoutline")
	private String trainCourseoutline;
	
	@Column(name="train_faci")
	private int trainFaci;
	
	@Column(name="train_sv")
	private int trainSv;
	
	@Column(name="train_pt")
	private int trainPt;

	@Column(name="train_status")
	private int trainStatus;

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

	public String getTrainCourseobjective() {
		return this.trainCourseobjective;
	}

	public void setTrainCourseobjective(String trainCourseobjective) {
		this.trainCourseobjective = trainCourseobjective;
	}
	
	public String getTrainCourseoutline() {
		return this.trainCourseoutline;
	}

	public void setTrainCourseoutline(String trainCourseoutline) {
		this.trainCourseoutline = trainCourseoutline;
	}

	public int getTrainFaci() {
		return this.trainFaci;
	}

	public void setTrainFaci(int trainFaci) {
		this.trainFaci = trainFaci;
	}
	
	public int getTrainSv() {
		return this.trainSv;
	}

	public void setTrainSv(int trainSv) {
		this.trainSv = trainSv;
	}
	
	public int getTrainPt() {
		return this.trainPt;
	}

	public void setTrainPt(int trainPt) {
		this.trainPt = trainPt;
	}

	public int getTrainStatus() {
		return this.trainStatus;
	}

	public void setTrainStatus(int trainStatus) {
		this.trainStatus = trainStatus;
	}
}