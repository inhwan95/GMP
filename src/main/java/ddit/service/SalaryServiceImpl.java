package ddit.service;

import java.util.List;

import ddit.dao.SalaryDAOImpl;
import ddit.vo.SalaryVO;

public class SalaryServiceImpl implements ISalaryService{

	private static SalaryServiceImpl instance = null;
	private SalaryDAOImpl dao = null;
	
	private SalaryServiceImpl() {
		if(dao==null) dao = SalaryDAOImpl.getInstance();
	}
	
	public static SalaryServiceImpl getInstance() {
		if(instance==null) instance = new SalaryServiceImpl();
		return instance;
	}

	@Override
	public int insertSal(SalaryVO salVo) {
		return dao.insertSal(salVo);
	}

	@Override
	public List<SalaryVO> getSalaryList() {
		return dao.getSalaryList();
	}

	@Override
	public SalaryVO getSalary(int memNo) {
		return dao.getSalary(memNo);
	}

}
