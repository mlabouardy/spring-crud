package com.labouardy.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Workshop {

	@Id
	@GeneratedValue
	private int id;

	private String name;

	private String subject;

	private String description;

	private String animator;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getAnimator() {
		return animator;
	}

	public void setAnimator(String animator) {
		this.animator = animator;
	}
}
