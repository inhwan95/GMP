package ddit.dao;

import ddit.vo.ScheduleVO;

public interface IScheduleDAO {

	/**
	 * 
	 * @param schVo
	 * @return int
	 */
	public int insertSchedule(ScheduleVO schVo);
	
	/**
	 * 
	 * @param schVo
	 * @return int
	 */
	public int updateSchedule(ScheduleVO schVo);
	
	/**
	 * 
	 * @param schNo
	 * @return int
	 */
	public int deleteSchedule(int schNo);
	
	//리스트는 내일 묻기로
}
