package approval.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import approval.dao.BoardDao;
import approval.dto.ConsultReportDto;
import approval.dto.CooperationReportDto;
import approval.dto.VacationReportDto;

@Controller
public class ApprovalController {

	@Autowired
	public BoardDao dao;
	
	@RequestMapping("approval/add-form.do")
	public String reportInsert(int member_no, HttpServletRequest request, ModelMap model) {
		
		return "approval/add_form";
	}

	// 리스트
	@RequestMapping("/approval/list.do")
	public String myList(int member_no, @RequestParam(value = "report_no", defaultValue="0") String report_no, HttpServletRequest request, ModelMap model) {
		String pageNum = request.getParameter("pageNum");
		if (pageNum == null) {
			pageNum = "1";
		}
		int pageSize = 3; // 한페이지의 글의 개수
		int currentPage = Integer.parseInt(pageNum);
		int start = (currentPage - 1) * pageSize + 1; // 한 페이지의 시작글 번호
		int end = currentPage * pageSize; // 한 페이지의 마지막 글번호
		int count = 0;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("end", end);
		map.put("member_no", member_no);
		
		if (report_no.equals("0")) { // 0일때는 버튼 품의서 눌렀을때 , null일땐 기본 페이지
			count = dao.consultBoardCount(member_no);
			List<ConsultReportDto> list = dao.consultBoardList(map);
			model.addAttribute("list", list);
		
		} else if (report_no.equals("1")) { // 휴가신청서 버튼을 클릭했을때
			count = dao.vacationBoardCount(member_no);
			List<VacationReportDto> list = dao.vacationBoardList(map);
			model.addAttribute("list", list);
		} else if (report_no.equals("2")) { // 업무협조요청서 버튼을 클릭했을때
			count = dao.cooperationBoardCount(member_no);
			List<CooperationReportDto> list = dao.cooperationBoardList(map);
			model.addAttribute("list", list);
		}
		int number = count;

		model.addAttribute("member_no", member_no);
		model.addAttribute("report_no", report_no);
		model.addAttribute("number", number);
		model.addAttribute("currentPage", currentPage);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		model.addAttribute("count", count);
		model.addAttribute("pageSize", pageSize);

		return "approval/list";
	}
}
