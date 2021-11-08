package ddit.dao;

import ddit.vo.EntranceSectionVO;
import ddit.vo.EntranceVO;

public interface IEntranceDAO {
	
	/**
	 * 출입대장 기록 메소드
	 * @param entVo	=>  입실시간, 퇴실시간, 자료실 구분
	 * @return
	 */
	public int insertEntrance(EntranceVO entVo);
	
	/**
	 * 출입대장 직원 기록 메소드
	 * @param entSecVo	=> 출입대장idx, 직원번호
	 * @return
	 */
	public int insertEntSection(EntranceSectionVO entSecVo);
	
	
	
}
