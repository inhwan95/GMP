package ddit.service;

import ddit.dao.ScheduleDAOImpl;
import ddit.vo.ScheduleVO;

public class ScheduleServiceImpl implements IScheduleService{

	private static ScheduleServiceImpl instance = null;
	private ScheduleDAOImpl dao = null;
	
	private ScheduleServiceImpl() {
		if(dao==null) dao = ScheduleDAOImpl.getInstance();
	}
	
	public static ScheduleServiceImpl getInstance() {
		if(instance==null) instance = new ScheduleServiceImpl();
		return instance;
	}

	@Override
	public int insertSchedule(ScheduleVO schVo) {
		return dao.insertSchedule(schVo);
	}

	@Override
	public int updateSchedule(ScheduleVO schVo) {
		return dao.updateSchedule(schVo);
	}

	@Override
	public int deleteSchedule(int schNo) {
		return dao.deleteSchedule(schNo);
	}

}
