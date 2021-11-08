package ddit.service;

import java.util.List;

import ddit.dao.MemberInfoDAOImpl;
import ddit.vo.MemberInfoVO;

public class MemberInfoServiceImpl implements IMemberInfoService{

	private static MemberInfoServiceImpl instance = null;
	private MemberInfoDAOImpl dao = null;
	
	private MemberInfoServiceImpl() {
		if(dao==null) dao = MemberInfoDAOImpl.getInstance();
	}
	
	public static MemberInfoServiceImpl getInstance() {
		if(instance==null) instance = new MemberInfoServiceImpl();
		return instance;
	}

	@Override
	public int insertMemInfo(MemberInfoVO memInfoVo) {
		int cnt = dao.updateMemberInfo(memInfoVo);
		
		if (cnt > 0) {
			cnt = dao.insertMemInfo(memInfoVo);
		} else {
			cnt = 0;
		}
		return cnt;
	}

	@Override
	public int updateMemInfo(MemberInfoVO memberInfoVo) {
		return dao.updateMemInfo(memberInfoVo);
	}

	@Override
	public int deleteMemInfo(int infoNo) {
		return dao.deleteMemInfo(infoNo);
	}

	@Override
	public List<MemberInfoVO> getMemInfoList() {
		return dao.getMemInfoList();
	}

	@Override
	public MemberInfoVO getMemInfo(int memNo) {
		return dao.getMemInfo(memNo);
	}

	@Override
	public int updateMemberInfo(MemberInfoVO memberInfoVo) {
		return dao.updateMemberInfo(memberInfoVo);
	}

}
