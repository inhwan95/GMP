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
		return null;
	}
	@Override
	public List<SanctionDocumentVO> getStatusDoc(String san_status) {
		List<SanctionDocumentVO> list = null;
		try {
			list = smc.queryForList("sanction_document.getStatusDoc", san_status);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	@Override
	public SanctionDocumentVO getDetail(int san_no) {
		SanctionDocumentVO sDVo = null;
		try {
			sDVo = (SanctionDocumentVO) smc.queryForObject("sanction_document.getDetail", san_no);
		} catch (SQLException e) {
			e.printStackTrace();
		}
//		System.out.println(sDVo + "뭐먹어"); // 잘 나오는디
		return sDVo;
	}

	@Override
	public int insertDocument(SanctionDocumentVO sanVo) {
		int cnt =0;
		
		try {
			
			Object obj = smc.insert("sanction_document.sanctionDocumentInsert",sanVo);
			
			if (obj == null) {
				obj = smc.insert("sanction_document.insertConfirmer1",sanVo); 
				if (obj == null) {
					obj = smc.insert("sanction_document.insertConfirmer2",sanVo);
					if (obj == null) {
						obj = smc.insert("sanction_document.insertConfirmer3",sanVo);
						cnt = 1; 
					}
				}
			} else cnt = 0;
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		
		return cnt;
	}

	
	
}

















