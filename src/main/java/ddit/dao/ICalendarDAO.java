package ddit.dao;

import java.util.List;

import ddit.vo.ScheduleMemberVO;
import ddit.vo.Schedule_EventVO;


public interface ICalendarDAO {
	
	public int insertSchedule(ScheduleMemberVO vo);
	
	public List<ScheduleMemberVO> loadSchedule(int mem_no);
	
	public int deleteOneSchedule(int idx);
	
	public int deleteAllSchedule();
}
