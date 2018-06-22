package com.itheima.core.po;
import java.io.Serializable;
import java.util.Date;
/**
 * 客户持久化类
 */
public class Customer implements Serializable {
	private static final long serialVersionUID = 1L;
	private Integer cust_id;          // 客户编号
	private String cust_tid;		 //工号
	private String cust_name;         // 教师名称
	private String cust_institute;      // 院部
	private String cust_post;    // 职务
	private String cust_grade;       // 等级
	private String cust_wages;     // 工资
	private String cust_mobile;      // 移动电话
	private String cust_address;     // 联系地址
	private String cust_password;
	private Date cust_createtime;    // 创建时间	
	private Integer start;            // 起始行
	private Integer rows;             // 所取行数
	
	public String getCust_address() {
		return cust_address;
	}
	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}
	public Integer getStart() {
		return start;
	}
	public void setStart(Integer start) {
		this.start = start;
	}
	public Integer getRows() {
		return rows;
	}
	public void setRows(Integer rows) {
		this.rows = rows;
	}
	public Integer getCust_id() {
		return cust_id;
	}
	public void setCust_id(Integer cust_id) {
		this.cust_id = cust_id;
	}
	public String getCust_name() {
		return cust_name;
	}
	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}
	public String getCust_tid() {
		return cust_tid;
	}
	public void setCust_tid(String cust_tid) {
		this.cust_tid = cust_tid;
	}
	public String getCust_institute() {
		return cust_institute;
	}
	public void setCust_institute(String cust_institute) {
		this.cust_institute = cust_institute;
	}
	public String getCust_post() {
		return cust_post;
	}
	public void setCust_post(String cust_post) {
		this.cust_post = cust_post;
	}
	public String getCust_grade() {
		return cust_grade;
	}
	public void setCust_grade(String cust_grade) {
		this.cust_grade = cust_grade;
	}
	public String getCust_wages() {
		return cust_wages;
	}
	public void setCust_wages(String cust_wages) {
		this.cust_wages = cust_wages;
	}
	public String getCust_mobile() {
		return cust_mobile;
	}
	public void setCust_mobile(String cust_mobile) {
		this.cust_mobile = cust_mobile;
	}
	public Date getCust_createtime() {
		return cust_createtime;
	}
	public void setCust_createtime(Date cust_createtime) {
		this.cust_createtime = cust_createtime;
	}
	public String getCust_password() {
		return cust_password;
	}
	public void getCust_password(String cust_password) {
		this.cust_password = cust_password;
	}
}
