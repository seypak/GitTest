package approval.dto;

import java.util.Date;

public class CooperationReportDto {

	private int cooreport_no;
	private int member_no;
	private int department_no; // 협조부서 depart_no로 가져옴
	private Date reg_date;
	private String title;
	private Date deadline; // 요청기한 언제까지 계산해서 넣을 값.
	private String content;
	
	
	public int getCooreport_no() {
		return cooreport_no;
	}
	public void setCooreport_no(int cooreport_no) {
		this.cooreport_no = cooreport_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public int getDepartment_no() {
		return department_no;
	}
	public void setDepartment_no(int department_no) {
		this.department_no = department_no;
	}
	public Date getReg_date() {
		return reg_date;
	}
	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getDeadline() {
		return deadline;
	}
	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
	
	
}
