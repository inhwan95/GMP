package ddit.dao;

import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.WorkManagementVO;

public class WorkManagementDAOImpl implements IWorkManagementDAO {
	private static WorkManagementDAOImpl instance = null;
	private SqlMapClient smc = null;
	private WorkManagementDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static WorkManagementDAOImpl getInstance() {
		if(instance==null) instance = new WorkManagementDAOImpl();
		return instance;
	}

	@Override
	public int insertWork(WorkManagementVO workVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateWork(WorkManagementVO workVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteWork(String memNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<WorkManagementVO> getWorkList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public WorkManagementVO getWork(int memNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<WorkManagementVO> getsearchWorkList(String memNm) {
		// TODO Auto-generated method stub
		return null;
	}

}
