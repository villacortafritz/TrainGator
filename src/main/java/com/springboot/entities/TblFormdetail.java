package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_formdetails database table.
 * 
 */
@Entity
@Table(name="tbl_formdetails")
@NamedQuery(name="TblFormdetail.findAll", query="SELECT t FROM TblFormdetail t")
public class TblFormdetail implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="fd_id")
	private int fdId;

	@Column(name="form_id")
	private int formId;

	@Column(name="peer_id")
	private int peerId;

	@Column(name="sv_id")
	private int svId;

	@Column(name="user_id")
	private int userId;

	public TblFormdetail() {
	}

	public int getFdId() {
		return this.fdId;
	}

	public void setFdId(int fdId) {
		this.fdId = fdId;
	}

	public int getFormId() {
		return this.formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

	public int getPeerId() {
		return this.peerId;
	}

	public void setPeerId(int peerId) {
		this.peerId = peerId;
	}

	public int getSvId() {
		return this.svId;
	}

	public void setSvId(int svId) {
		this.svId = svId;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}