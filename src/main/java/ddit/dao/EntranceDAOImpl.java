package ddit.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.EntranceSectionVO;
import ddit.vo.EntranceVO;

public class EntranceDAOImpl implements IEntranceDAO{

	private static EntranceDAOImpl instance = null;
	private SqlMapClient smc = null;
	
	private EntranceDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static EntranceDAOImpl getInstance() {
		if(instance==null) instance = new EntranceDAOImpl();
		
		return instance;
	}	
	

	@Override
	public int insertEntrance(EntranceVO entVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertEntSection(EntranceSectionVO entSecVo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
