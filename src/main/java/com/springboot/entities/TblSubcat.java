package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_subcat database table.
 * 
 */
@Entity
@Table(name="tbl_subcat")
@NamedQuery(name="TblSubcat.findAll", query="SELECT t FROM TblSubcat t")
public class TblSubcat implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="sub_id")
	private int subId;

	@Column(name="cat_id")
	private int catId;

	@Column(name="form_id")
	private int formId;

	@Column(name="sub_desc")
	private String subDesc;

	public TblSubcat() {
	}

	public int getSubId() {
		return this.subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public int getCatId() {
		return this.catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public int getFormId() {
		return this.formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

	public String getSubDesc() {
		return this.subDesc;
	}

	public void setSubDesc(String subDesc) {
		this.subDesc = subDesc;
	}

}