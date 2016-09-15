package com.defynu.Model;


public class AddMeasurement {
	
	public int neck=0;
	public int chest=0;
	public int waist=0;
	public int hip=0;
	public int seat=0;
	public int length=0;
	public int shoulder=0;
	public int arm=0;
	public int wrist=0;
	public String profile;
	public String type;
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public AddMeasurement(){
	
	}
	
	public AddMeasurement(int neck, int chest, int waist, int hip, int seat,
			int length, int shoulder, int arm, int wrist,String profile) {
		super();
		this.neck = neck;
		this.chest = chest;
		this.waist = waist;
		this.hip = hip;
		this.seat = seat;
		this.length = length;
		this.shoulder = shoulder;
		this.arm = arm;
		this.wrist = wrist;
	}
	public int getNeck() {
		return neck;
	}
	public void setNeck(int neck) {
		this.neck = neck;
	}
	public int getChest() {
		return chest;
	}
	public void setChest(int chest) {
		this.chest = chest;
	}
	public int getWaist() {
		return waist;
	}
	public void setWaist(int waist) {
		this.waist = waist;
	}
	public int getHip() {
		return hip;
	}
	public void setHip(int hip) {
		this.hip = hip;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public int getLength() {
		return length;
	}
	public void setLength(int length) {
		this.length = length;
	}
	public int getShoulder() {
		return shoulder;
	}
	public void setShoulder(int shoulder) {
		this.shoulder = shoulder;
	}
	public int getArm() {
		return arm;
	}
	public void setArm(int arm) {
		this.arm = arm;
	}
	public int getWrist() {
		return wrist;
	}
	public void setWrist(int wrist) {
		this.wrist = wrist;
	}
	

}
