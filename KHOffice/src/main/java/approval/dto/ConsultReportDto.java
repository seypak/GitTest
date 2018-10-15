package approval.dto;

import java.sql.Date;

public class ConsultReportDto {

	private int conreport_no;
	private String title;
	private Date reg_date;
	private String name;
	private int member_no;
	private String content;

	public int getMember_no() {
		return member_no;
	}

	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getConreport_no() {
		return conreport_no;
	}

	public void setConreport_no(int conreport_no) {
		this.conreport_no = conreport_no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getReg_date() {
		return reg_date;
	}

	public void setReg_date(Date reg_date) {
		this.reg_date = reg_date;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
