package ddit.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.SanctionFileVO;

public class SanctionFileDAOImpl implements ISanctionFileDAO{
	private static SanctionFileDAOImpl instance = null;
	private SqlMapClient smc = null;
	private SanctionFileDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static SanctionFileDAOImpl getInstance() {
		if(instance==null) instance = new SanctionFileDAOImpl();
		return instance;
	}

	@Override
	public int insertSanctionFile(SanctionFileVO sanFVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int updateSanctionFile(SanctionFileVO sanFVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteSanctionFile(int fileNo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
