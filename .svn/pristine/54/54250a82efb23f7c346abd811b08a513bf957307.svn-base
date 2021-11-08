package ddit.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.ScheduleMemberVO;


public class CalendarDAOImpl implements ICalendarDAO{
	
private static CalendarDAOImpl instance;
	
	private SqlMapClient smc; 
	
	private CalendarDAOImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static CalendarDAOImpl getInstance() {
		if( instance == null ) instance = new CalendarDAOImpl();
		return instance;
	}
	
	public int insertSchedule(ScheduleMemberVO vo) {
		int cnt = 0;
		try {
		Object obj = smc.insert("schedule.insertSchedule",vo);
			if( obj == null ) {
				cnt = 1;
			}
		}catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	public List<ScheduleMemberVO> loadSchedule(int mem_no){
		List<ScheduleMemberVO> list = null;
		try {
			list = smc.queryForList("schedule.loadSchedule", mem_no);
		}catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public int deleteOneSchedule(int idx) {
		int cnt = 0;
		try {
			cnt = smc.delete("schedule.deleteOneSchedule", idx);
			System.out.println("dao에서의 cnt 값 :  " + cnt );
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
	
	public int deleteAllSchedule() {
		int cnt = 0;
		try {
			cnt = smc.delete("schedule.deleteAllSchedule");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return cnt;
	}
}
