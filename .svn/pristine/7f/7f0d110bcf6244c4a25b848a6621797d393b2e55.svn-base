package ddit.dao;

import java.sql.SQLException;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.ConfirmerVO;

public class ConfirmerDAOImpl implements IConfirmerDAO{
	
	private static ConfirmerDAOImpl instance = null;
	private SqlMapClient smc = null;
	private ConfirmerDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static ConfirmerDAOImpl getInstance() {
		if(instance==null) instance = new ConfirmerDAOImpl();
		return instance;
	}
	
	@Override
	public int insertConfirmer(ConfirmerVO confirmVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("", confirmVo);
			
			if(obj==null) cnt = 1;
		} catch (SQLException e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
	}
	
	@Override
	public int updateConfirmer(ConfirmerVO confirmVo) {
		int cnt = 0;
		try {
			Object obj = smc.update("", confirmVo);
			
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
		
	}
	
	@Override
	public int deleteConfirmer(int MemNo) {
		int cnt = 0;
		try {
			Object obj = smc.delete("", MemNo);
			
			if(obj==null) cnt=1;
		} catch (SQLException e) {
			cnt=0;
			e.printStackTrace();
		}
		return cnt;
	
	}	
	
	@Override
	public int confirmerOk() {
		// TODO Auto-generated method stub
		return 0;
	}



}
