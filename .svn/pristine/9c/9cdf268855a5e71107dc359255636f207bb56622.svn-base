package ddit.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.SanctionDocumentVO;

public class SanctionDocumentDAOImpl implements ISanctionDocumentDAO {

	private static SanctionDocumentDAOImpl instance = null;
	private SqlMapClient smc = null;
	private SanctionDocumentDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static SanctionDocumentDAOImpl getInstance() {
		if(instance==null) instance = new SanctionDocumentDAOImpl();
		return instance;
	}
	@Override
	public int insertSanDoc(SanctionDocumentVO sanDocVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("sanction_document.sanctionDocumentInsert", sanDocVo);
			if(obj==null) cnt = 1;
		} catch (SQLException e) {
			e.printStackTrace();
		}	
		return cnt;
	}
	@Override
	public int updateSanDoc(SanctionDocumentVO sanDocVo) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int deleteSanDoc(int sanNo) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public List<SanctionDocumentVO> getSanDocList(String sanNm) {
		List<SanctionDocumentVO> list = null;
		try {
			list = smc.queryForList("sanction_document.getSanctionDocumentList", sanNm);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public List<SanctionDocumentVO> getSanDoc(SanctionDocumentVO sanDocVo) {
		// TODO Auto-generated method stub
		return null;
	}

	
	
}