package ddit.dao;

import java.util.List;

import ddit.vo.MemberInfoVO;

public interface IMemberInfoDAO {

	/**
	 * memberInfo 추가할떄 member테이블의 부서,직급도 업데이트
	 * @param memberInfoVo
	 * @return
	 */
	public int updateMemberInfo(MemberInfoVO memberInfoVo);
	
	/**
	 * @param memInfoVo
	 * @return int
	 */
	public int insertMemInfo(MemberInfoVO memInfoVo);
	
	/**
	 * 
	 * @param memberInfoVo
	 * @return int
	 */
	public int updateMemInfo(MemberInfoVO memberInfoVo);
	
	/**
	 * 
	 * @param infoNo
	 * @return int
	 */
	public int deleteMemInfo(int infoNo);
	
	/**
	 * 
	 * @return List<MemberInfoVO>
	 */
	public List<MemberInfoVO> getMemInfoList();
	
	/**
	 * where 직원번호로 확인해요
	 * @param memNo
	 * @return MemberInfoVO
	 */
	public MemberInfoVO getMemInfo(int memNo);
}
