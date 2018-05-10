package com.springboot.entities;

import java.io.Serializable;
import javax.persistence.*;


/**
 * The persistent class for the tbl_form database table.
 * 
 */
@Entity
@Table(name="tbl_form")
@NamedQuery(name="TblForm.findAll", query="SELECT t FROM TblForm t")
public class TblForm implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@Column(name="form_id")
	private int formId;

	@Column(name="form_name")
	private String formName;

	public TblForm() {
	}

	public int getFormId() {
		return this.formId;
	}

	public void setFormId(int formId) {
		this.formId = formId;
	}

	public String getFormName() {
		return this.formName;
	}

	public void setFormName(String formName) {
		this.formName = formName;
	}

}