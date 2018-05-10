package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_subcat2 database table.
 * 
 */
@Entity
@Table(name="tbl_subcat2")
@NamedQuery(name="TblSubcat2.findAll", query="SELECT t FROM TblSubcat2 t")
public class TblSubcat2 implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="sub2_id")
	private int sub2Id;

	@Column(name="cat_id")
	private int catId;

	@Column(name="form_id")
	private int formId;

	@Column(name="sub_id")
	private int subId;

	@Column(name="sub2_desc")
	private String sub2Desc;

	public TblSubcat2() {
	}

	public int getSub2Id() {
		return this.sub2Id;
	}

	public void setSub2Id(int sub2Id) {
		this.sub2Id = sub2Id;
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

	public int getSubId() {
		return this.subId;
	}

	public void setSubId(int subId) {
		this.subId = subId;
	}

	public String getSub2Desc() {
		return this.sub2Desc;
	}

	public void setSub2Desc(String sub2Desc) {
		this.sub2Desc = sub2Desc;
	}

}