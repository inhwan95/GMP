package ddit.service;

import java.util.List;

import ddit.vo.WorkManagementVO;

public interface IWorkManagementService {

	/**
	 * 매일 6시가 되면 새롭게 직원수만큼 insert 데이터가 생긴다. 
	 * 직원번호와 근무일외는 null로 시작
	 * 그리고 출근과 퇴근시 상태정보를 update해준다.
	 * @param workVo
	 * @return int
	 */
	public int insertWork(WorkManagementVO workVo);
	
	/**
	 * Dynamic.. isNotEmpty..
 	 * 출근과 퇴근시 상태정보를 update해준다.
	 * 상태정보는 휴가 병가 반차 근무 무단결근 조퇴 지각 등을 넣음
	 * 
	 * @param workVo
	 * @return int
	 */
	public int updateWork(WorkManagementVO workVo);
	
	/**
	 * Update문만 쓰기에
	 * 삭제는 하지 않지만 관리자의 입장차원에서
	 * 잘못 넣을 수 있으므로 delete도 넣어주기로 함
	 * @param memNo
	 * @return
	 */
	public int deleteWork(String memNo);
	
	/**
	 * 관리자 입장의 전체 근태 조회
	 * @return List<WorkManagementVO>
	 */
	public List<WorkManagementVO> getWorkList();
	
	/**
	 * 회원번호 입력으로 개인의 근태 조회
	 * @param MemNo
	 * @return WorkManagementVO
	 */
	public WorkManagementVO getWork(int memNo);
	
	/**
	 * like %%로 직원명 입력시 해당하는 리스트 값 출력을 위하여 
	 * @param memNm
	 * @return List<WorkManagementVO>
	 */
	public List<WorkManagementVO> getsearchWorkList(String memNm);
}
