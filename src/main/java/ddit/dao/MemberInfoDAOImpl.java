package ddit.dao;

import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.MemberInfoVO;

public class MemberInfoDAOImpl implements IMemberInfoDAO {
	private static MemberInfoDAOImpl instance = null;
	private SqlMapClient smc = null;
	private MemberInfoDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	
	public static MemberInfoDAOImpl getInstance() {
		if(instance==null) instance = new MemberInfoDAOImpl();
		return instance;
	}
	
	
	@Override
	public int insertMemInfo(MemberInfoVO memInfoVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("member_info.memberInfoInsert",memInfoVo);
			if (obj == null) {
				cnt = 1;
			}
		} catch (SQLException e) {
			cnt =0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateMemInfo(MemberInfoVO memberInfoVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteMemInfo(int infoNo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<MemberInfoVO> getMemInfoList() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public MemberInfoVO getMemInfo(int memNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int updateMemberInfo(MemberInfoVO memberInfoVo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("member_info.dpUpdate",memberInfoVo);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return cnt;
	}

	

}
