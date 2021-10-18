package com.myshop.vo;

public class MemberVO {
	
	String id, pass, name, addr1, addr2, hp, hp1, hp2, hp3, email, email1, email2, gender, yyyy, mm, dd, birth, birth_type;

	
	public String getHp() {
		if (hp1.equals("")) {
			return hp;			
		} else {
			return hp1+"-"+hp2+"-"+hp3;
		}
	}

	public void setHp(String hp) {
		this.hp = hp;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddr1() {
		return addr1;
	}

	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}

	public String getAddr2() {
		return addr2;
	}

	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}

	public String getHp1() {
		return hp1;
	}

	public void setHp1(String hp1) {
		this.hp1 = hp1;
	}

	public String getHp2() {
		return hp2;
	}

	public void setHp2(String hp2) {
		this.hp2 = hp2;
	}

	public String getHp3() {
		return hp3;
	}

	public void setHp3(String hp3) {
		this.hp3 = hp3;
	}
	
	public String getEmail() {
		if (email1.equals("")) {
			return email;			
		} else {
			return email1+"@"+email2;
		}
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getEmail1() {
		return email1;
	}

	public void setEmail1(String email1) {
		this.email1 = email1;
	}

	public String getEmail2() {
		return email2;
	}

	public void setEmail2(String email2) {
		this.email2 = email2;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getYyyy() {
		return yyyy;
	}

	public void setYyyy(String yyyy) {
		this.yyyy = yyyy;
	}

	public String getMm() {
		return mm;
	}

	public void setMm(String mm) {
		this.mm = mm;
	}

	public String getDd() {
		return dd;
	}

	public void setDd(String dd) {
		this.dd = dd;
	}

	public String getBirth() {
		if (yyyy.equals("")) {
			return birth;
		} else {
			return yyyy+"³â "+mm+"¿ù "+dd+"ÀÏ";
		}
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getBirth_type() {
		return birth_type;
	}

	public void setBirth_type(String birth_type) {
		this.birth_type = birth_type;
	}
	
	

}
