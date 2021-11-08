package ddit.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.SalaryVO;

public class SalaryDAOImpl implements ISalaryDAO{
	private static SalaryDAOImpl instance = null;
	private SqlMapClient smc = null;
	private SalaryDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static SalaryDAOImpl getInstance() {
		if(instance==null) instance = new SalaryDAOImpl();
		return instance;
	}
	
	@Override
	public int insertSal(SalaryVO salVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<SalaryVO> getSalaryList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public SalaryVO getSalary(int memNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
