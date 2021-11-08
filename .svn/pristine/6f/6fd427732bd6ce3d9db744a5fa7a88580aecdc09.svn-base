package ddit.dao;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.ChatVO;
import ddit.vo.MessageVO;

public class ChatDAOImpl implements IChatDAO {
	private static ChatDAOImpl instance = null;
	private SqlMapClient smc = null;
	
	private ChatDAOImpl() {
		if(smc==null) smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static ChatDAOImpl getInstance() {
		if(instance==null) instance = new ChatDAOImpl();
		
		return instance;
	}
	
	
	@Override
	public int insertChat(ChatVO cVo) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteChatMem(int mem_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertMessage(MessageVO messageVo) {
		// TODO Auto-generated method stub
		return 0;
	}

}
