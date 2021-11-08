package ddit.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.ScheduleVO;

public class ScheduleDAOImpl implements IScheduleDAO{
	private static ScheduleDAOImpl instance = null;
	private SqlMapClient smc = null;
	private ScheduleDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static ScheduleDAOImpl getInstance() {
		if(instance==null) instance = new ScheduleDAOImpl();
		return instance;
	}
	@Override
	public int insertSchedule(ScheduleVO schVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSchedule(ScheduleVO schVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSchedule(int schNo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
