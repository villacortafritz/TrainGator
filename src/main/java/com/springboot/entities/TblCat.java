package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_cat database table.
 * 
 */
@Entity
@Table(name="tbl_cat")
@NamedQuery(name="TblCat.findAll", query="SELECT t FROM TblCat t")
public class TblCat implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue
	@Column(name="cat_id")
	private int catId;

	@Column(name="cat_desc")
	private String catDesc;

	@Column(name="form_id")
	private int formId;

	public TblCat() {
	}

	public int getCatId() {
		return this.catId;
	}

	public void setCatId(int catId) {
		this.catId = catId;
	}

	public String getCatDesc() {
		return this.catDesc;
	}

	public void setCatDesc(String catDesc) {
		this.catDesc = catDesc;
	}

	public int getFormId() {
		return this.formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

}