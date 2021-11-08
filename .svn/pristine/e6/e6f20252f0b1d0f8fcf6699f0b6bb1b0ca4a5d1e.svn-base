package ddit.dao;

import java.util.List;

import ddit.vo.SalaryVO;

public interface ISalaryDAO {
	
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
