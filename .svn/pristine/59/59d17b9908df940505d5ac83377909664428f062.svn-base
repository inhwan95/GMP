package ddit.dao;

import java.util.List;

import ddit.vo.MemberVO;

public interface IMemberDAO {

	public int join(MemberVO memVo);
	
	/**
	 * 아이디 중복 체크
	 * @param memId
	 * @return int
	 */
	public int idCheck(String memId);
	
	public int updateMem(MemberVO memVo);
	
	/**
	 * select문으로 Id와 pass가 같이 일치해야 로그인
	 * 아니면 id 또는 pass 입력 불일치 알림
	 * @param MemberVO
	 * @return MemberVO
	 */
	public MemberVO login(MemberVO memVo);
	
	/**
	 * 관리자 입장에서 전체 리스트를 볼 수 있는 멤버 리스트
	 * @return
	 */
	public List<MemberVO> getMemberList();
	
	/**
	 * 마이페이지에서 볼 수 있는 내 개인정보
	 * @return
	 */
	//public MemberVO getMember(int mem_no);
	public MemberVO getMember(MemberVO memVo);
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 ID에 담긴 정보를 삭제
	 * @param memId
	 * @return
	 */
	public int deleteMember(String memId);
	
	/**
	 *  kakao 로그인 정보를 매개변수로 받아 회원가입 유무식별
	 * @param mvo
	 * @return 
	 */
	public MemberVO searchKkoLogin(MemberVO mvo);
}
