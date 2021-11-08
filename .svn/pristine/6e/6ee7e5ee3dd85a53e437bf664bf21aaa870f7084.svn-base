package ddit.service;

import java.util.List;

import ddit.vo.ConferenceVO;

public interface IConferenceService {

	/**
	 * 
	 * @param conVo
	 * @return
	 */
	public int insertConference(ConferenceVO conVo);
	
	public int updateConference(ConferenceVO conVo);
	
	public int deleteConference(ConferenceVO conVo);
	
	public List<ConferenceVO> getConference();
	
	/**
	 * 예약하려는 시간대의 이미 예약되어있는 회의실 번호 조회
	 * @param time	=> 예약하려는 시간
	 * @return
	 */
	List<Integer> reservedConNo(ConferenceVO conVo);
	

	/**
	 * 삭제하려는 예약번호가 자신이 예약한 회의실인지 확인하는 방법 
	 * @param mem_no	=> 삭제하려는 직원번호
	 * @return
	 */
	public int confirmResNo(ConferenceVO conVo);
	
	
}
