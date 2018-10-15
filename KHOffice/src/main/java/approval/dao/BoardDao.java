package approval.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import approval.dto.ConsultReportDto;
import approval.dto.CooperationReportDto;
import approval.dto.VacationReportDto;

public class BoardDao extends SqlSessionDaoSupport {
	public int insertBoard(ConsultReportDto boardDto) {
		return getSqlSession().insert("board.insert", boardDto);
	}
	
	
	
	
	
	// member_no를가지고 consult_report 리스트 뽑아오기
	public List<ConsultReportDto> consultBoardList(Map map) {
		return getSqlSession().selectList("approval.consult_report_list", map);
	}

	public int consultBoardCount(int member_no) {
		return getSqlSession().selectOne("approval.consult_report_count", member_no);
	}
	
	
	// member_no를가지고 vacation_report 리스트 뽑아오기
	public List<VacationReportDto> vacationBoardList(Map map) {
		return getSqlSession().selectList("approval.vacation_report_list", map);
	}

	public int vacationBoardCount(int member_no) {
		return getSqlSession().selectOne("approval.vacation_report_count", member_no);
	}
	
	
	// member_no를가지고 vacation_report 리스트 뽑아오기
	public List<CooperationReportDto> cooperationBoardList(Map map) {
		return getSqlSession().selectList("approval.cooperation_report_list", map);
	}

	public int cooperationBoardCount(int member_no) {
		return getSqlSession().selectOne("approval.cooperation_report_count", member_no);
	}


	
	
	
	
	
	/*
	 * public List<ConsultReportDto> boardSearchList(Map map) { return
	 * getSqlSession().selectList("board.searchList", map); }
	 * 
	 * public ConsultReportDto boardDetail(String no) { return
	 * getSqlSession().selectOne("board.detail", no); }
	 * 
	 * public void boardViewUpdate(String no) {
	 * getSqlSession().update("board.viewUpdate",no); }
	 * 
	 * public int boardUpdate(ConsultReportDto boardDto) { return
	 * getSqlSession().update("board.update", boardDto); }
	 * 
	 * public int boardDelete(String no) { return
	 * getSqlSession().delete("board.delete", no); }
	 */
}
