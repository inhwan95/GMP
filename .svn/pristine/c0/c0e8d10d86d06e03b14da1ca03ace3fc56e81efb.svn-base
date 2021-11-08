package ddit.service;

import ddit.vo.ConfirmerVO;

public interface IConfirmerService {

	/**
	 * 승인자 넣어줄 때 
	 * @param conferVo
	 * @return int
	 */
	public int insertConfirmer(ConfirmerVO confirmVo);
	
	/**
	 * 승인자 잘못된거 수정
	 * @param conferVo	=> 직원번호,단계,승인자 수정
	 * @return int
	 */
	public int updateConfirmer(ConfirmerVO confirmVo);
	
	/**
	 * 승인자 삭제
	 * @param MemNo
	 * @return int
	 */
	public int deleteConfirmer(int MemNo);
	
	/**
	 * 결재 승인 여부 업데이트 메소드
	 * @return
	 */
	public int confirmerOk();
	
}
