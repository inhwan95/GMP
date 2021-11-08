package ddit.service;

import java.util.List;

import ddit.vo.ChatVO;
import ddit.vo.MessageVO;

public interface IChatService {
	/**
	 * 
	 * @param cVo
	 * @return
	 */
	public int insertChat(ChatVO cVo);
	
	/**
	 * 
	 * @param mem_no
	 * @return
	 */
	public int deleteChatMem(int mem_no);

	/**
	 * 메세지 삭제는 없다 수정역시 있을 수 없지
	 * @param messageVo
	 * @return int
	 */
	public int insertMessage(MessageVO messageVo);

	/**
	 *  mem_no(회원번호)를 매개변수로 받아 해당 회원의 채팅내역을 반한다.
	 * @param messageVo
	 * @return
	 */
	public List<MessageVO> loadMessage(int mem_no);
}
