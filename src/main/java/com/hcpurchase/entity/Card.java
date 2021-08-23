package com.hcpurchase.entity;

public class Card {
	
	private Integer id;
	private String idCard;
	private Integer uId;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getIdCard() {
		return idCard;
	}
	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}
	public Integer getuId() {
		return uId;
	}
	public void setuId(Integer uId) {
		this.uId = uId;
	}
	@Override
	public String toString() {
		return "Card [id=" + id + ", idCard=" + idCard + ", uId=" + uId + "]";
	}
	
	
}
