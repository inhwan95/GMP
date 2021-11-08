package ddit.service;

import java.util.List;

import ddit.dao.ChatDAOImpl;
import ddit.vo.ChatVO;
import ddit.vo.MessageVO;

public class ChatServiceImpl implements IChatService{

	private static ChatServiceImpl instance = null;
	private ChatDAOImpl dao = null;
	
	private ChatServiceImpl() {
		if(dao==null) dao = ChatDAOImpl.getInstance();
	}
	
	public static ChatServiceImpl getInstance() {
		if(instance==null) instance = new ChatServiceImpl();
		return instance;
	}

	@Override
	public int insertChat(ChatVO cVo) {
		return dao.insertChat(cVo); 
	}

	@Override
	public int deleteChatMem(int mem_no) {
		return dao.deleteChatMem(mem_no);
	}

	@Override
	public int insertMessage(MessageVO messageVo) {
		return insertMessage(messageVo);
	}

	@Override
	public List<MessageVO> loadMessage(int mem_no) {
		return dao.loadMessage(mem_no);
	}

}
