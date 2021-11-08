package ddit.dao;


import java.sql.SQLException;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import ddit.config.BuildedSqlMapClient;
import ddit.vo.ConferenceVO;

public class ConferenceDAOImpl implements IConferenceDAO {

	private static ConferenceDAOImpl instance;
	private SqlMapClient smc;
	private ConferenceDAOImpl() {
		smc = BuildedSqlMapClient.getSqlMapClient();
	}
	public static ConferenceDAOImpl getInstance() {
		if(instance==null) instance = new ConferenceDAOImpl();
		return instance;
	}
	@Override
	public int insertConference(ConferenceVO conVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("conference_reservation.conferenceReservationInsert",conVo);
			if (obj == null) {
				cnt = 1;
			}
		} catch (Exception e) {
			cnt =0;
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public int updateConference(ConferenceVO conVo) {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int deleteConference (ConferenceVO conVo){
		int cnt = 0;
		try {
			cnt = smc.delete("conference_reservation.conferenceReservationDelete", conVo);
			if (cnt > 0) {
				cnt =1;
			}
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}
	@Override
	public List<ConferenceVO> getConference() {
		
		List<ConferenceVO> list = null;
		
		try {
			list = smc.queryForList("conference_reservation.reservedConference");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	@Override
	public List<Integer> reservedConNo(ConferenceVO conVo){
		List<Integer> list = null;
		
		try {
			list = smc.queryForList("conference_reservation.reservedConNo", conVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	
	
	@Override
	public int confirmResNo(ConferenceVO conVo) {
		int memNo = 0;
		
		try {
			memNo = (int) smc.queryForObject("conference_reservation.confirmResNo",conVo);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memNo;
	}
}
