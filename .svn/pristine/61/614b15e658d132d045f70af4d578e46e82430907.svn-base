package ddit.service;

import java.util.List;

import ddit.vo.DepartmentVO;
import ddit.vo.MemberInfoVO;
import ddit.vo.MemberVO;
import ddit.vo.SalaryVO;
import ddit.vo.WorkManagementVO;

public interface IManagerService {
	
	/**
	 * 매개변수로 받아온 직원번호를 가진 직원 급여내역 조회
	 * @param memNo
	 * @return
	 */
	public List<SalaryVO> getSalaryList(int memNo);
	
	/**
	 * 해당 부서의 직원정보리스트2
	 * @param deptNO
	 * @return
	 */
	public List<MemberVO> departMemberInfo(int memNo);
	
	/**
	 * 해당 부서의 직원정보리스트
	 * @return
	 */
	public List<MemberVO> departmentMember(int deptNO);
	
	/**
	 * 부서리스트
	 * @return
	 */
	public List<DepartmentVO> departmentList();
	
	/**
	 * 해당직원의 상세정보
	 * @param memNo
	 * @return
	 */
	public List<MemberVO> deptMemberDetail(int memNo);
	
///////////////////////////////////////////////////////////////////////
	
	
	/**
	 * 관리자 입장의 전체 근태 조회
	 * @return List<WorkManagementVO>
	 */
	public List<WorkManagementVO> getWorkList();
	
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
	
	/**
	 * 급여정보는 잘못 입력하면 반환하는 것도 그냥 입력으로 받아버립니다.
	 * 구분명에 오입금으로 인한 반환?
	 * -급여
	 * @param salVo
	 * @return int 
	 */
	public int insertSal(SalaryVO salVo);
	
	/**
	 * 급여정보 모두 조회
	 * @return List<SalaryVO>
	 */
	public List<SalaryVO> getSalaryList();
	
	/**
	 * 멤버 아이디로 해당 직원 급여 보기
	 * @param memNo
	 * @return int
	 */
	public SalaryVO getSalary(int memNo); 

	
	
	
}
