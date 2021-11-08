package ddit.service;

import java.util.List;

import ddit.dao.ConferenceDAOImpl;
import ddit.vo.ConferenceVO;

public class ConferenceServiceImpl implements IConferenceService{

	private static ConferenceServiceImpl instance = null;
	private ConferenceDAOImpl dao;
	private ConferenceServiceImpl() {
		dao = ConferenceDAOImpl.getInstance();
	}
	public static ConferenceServiceImpl getInstance() {
		if(instance==null) instance = new ConferenceServiceImpl();
		return instance;
	}
	@Override
	public int insertConference(ConferenceVO conVo) {
		List<Integer> conNo = reservedConNo(conVo);
		if (conNo == null) {
			return 0;
		} else {
			return dao.insertConference(conVo);
		}
	}
	
	@Override
	public int updateConference(ConferenceVO conVo) {
		return dao.updateConference(conVo);
	}
	@Override
	public int deleteConference(ConferenceVO conVo) {
		int cnt = 0;
		int mem_no = confirmResNo(conVo);
		int memNO = conVo.getMem_no();
		if (mem_no == memNO) {
			cnt = 1;
			dao.deleteConference(conVo);
		} else {
			cnt = 0;
		}
		return cnt;
	}
	
	@Override
	public List<ConferenceVO> getConference() {
		return dao.getConference();
	}
	
	@Override
	public List<Integer> reservedConNo(ConferenceVO conVo) {
		List<Integer> list = dao.reservedConNo(conVo);
		
		int conNO = conVo.getCon_no();
		
		// 반환값이 null이면 예약 불가
		for (Integer integer : list) {
			if (conNO == integer) {
				return null;
			}
		}
		return list;
	}
	
	@Override
	public int confirmResNo(ConferenceVO conVo) {
		return dao.confirmResNo(conVo);
	}

}
