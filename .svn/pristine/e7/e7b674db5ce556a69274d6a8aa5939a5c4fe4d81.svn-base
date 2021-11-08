package ddit.dao;

import java.util.List;

import ddit.vo.ConferenceVO;

public interface IConferenceDAO {
	
	/**
	 * 회의실예약
	 * @param conVo
	 * @return
	 */
	public int insertConference(ConferenceVO conVo);
	
	/**
	 * 예약수정
	 * @param conVo
	 * @return
	 */
	public int updateConference(ConferenceVO conVo);
	
	/**
	 * 예약취소
	 * @param res_no
	 * @return
	 */
	public int deleteConference(ConferenceVO conVo);
	
	/**
	 * 당일 회의실 예약현황
	 * @return
	 */
	public List<ConferenceVO> getConference();

	/**
	 * 예약하려는 시간대의 이미 예약되어있는 회의실 번호 조회
	 * @param time	=> 예약하려는 시간
	 * @return
	 */
	public List<Integer> reservedConNo(ConferenceVO conVo);
	
	/**
	 * 삭제하려는 예약번호가 자신이 예약한 회의실인지 확인하는 방법 
	 * @param mem_no	=> 삭제하려는 직원번호
	 * @return
	 */
	public int confirmResNo(ConferenceVO conVo);
	
	
}
