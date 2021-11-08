package ddit.service;

import java.util.List;

import ddit.dao.CalendarDAOImpl;
import ddit.vo.ScheduleMemberVO;


public class CanlendarServiceImpl implements ICalendarService{
	
	private static CanlendarServiceImpl instance = null;
	private CalendarDAOImpl dao = null;
	
	private CanlendarServiceImpl() {
		if(dao==null) dao = CalendarDAOImpl.getInstance();
	}
	
	public static CanlendarServiceImpl getInstance() {
		if(instance==null) instance = new CanlendarServiceImpl();
		return instance;
	}
	
	public int insertSchedule(ScheduleMemberVO vo) {
		return dao.insertSchedule(vo);
	}
	
	public List<ScheduleMemberVO> loadSchedule(int mem_no){
		return dao.loadSchedule(mem_no);
	}
	
	public int deleteOneSchedule(int idx) {
		return dao.deleteOneSchedule(idx);
	}
	
	public int deleteAllSchedule() {
		return dao.deleteAllSchedule();
	}
	
}
