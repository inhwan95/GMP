package ddit.service;

import java.util.List;

import ddit.dao.MemberDAOImpl;
import ddit.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {

	private static MemberServiceImpl instance = null;
	private MemberDAOImpl dao = null;
	private MemberServiceImpl() {
		dao = MemberDAOImpl.getInstance();
	}
	
	public static MemberServiceImpl getInstance() {
		if(instance==null) instance = new MemberServiceImpl();
		return instance;
	}

	@Override
	public int join(MemberVO memVo) {
		return dao.join(memVo);
	}

	@Override
	public int idCheck(String memId) {
		return dao.idCheck(memId);
	}

	@Override
	public int updateMem(MemberVO memVo) {
		return dao.updateMem(memVo);
	}

	@Override
	public MemberVO login(MemberVO memVo) {
		return dao.login(memVo);
	}

	@Override
	public List<MemberVO> getMemberList() {
		return dao.getMemberList();
	}
	
	@Override
	public MemberVO getMember(MemberVO memVo) {
		return dao.getMember(memVo);
	}
	
	@Override
	public MemberVO getMemberOne(MemberVO memVo) {
		return dao.getMemberOne(memVo);
	}

	@Override
	public int deleteMember(String memId) {
		return dao.deleteMember(memId);
	}

	@Override
	public MemberVO searchKkoLogin(MemberVO mvo) {
		return dao.searchKkoLogin(mvo);
	}

	
}