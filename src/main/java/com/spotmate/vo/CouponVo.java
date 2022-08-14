package com.spotmate.vo;

public class CouponVo {
	
	//필드
	private int no;
	private String buyDate;
	private String usePlace;
	private String status;

	
	//생성자
	public CouponVo() {
	}

	public CouponVo(int no, String buyDate, String usePlace, String status) {
		this.no = no;
		this.buyDate = buyDate;
		this.usePlace = usePlace;
		this.status = status;
	}

	
	//메소드-gs
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getBuyDate() {
		return buyDate;
	}

	public void setBuyDate(String buyDate) {
		this.buyDate = buyDate;
	}

	public String getUsePlace() {
		return usePlace;
	}

	public void setUsePlace(String usePlace) {
		this.usePlace = usePlace;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	//메소드-일반
	@Override
	public String toString() {
		return "CouponVo [no=" + no + ", buyDate=" + buyDate + ", usePlace=" + usePlace + ", status=" + status + "]";
	}
	
	
}
