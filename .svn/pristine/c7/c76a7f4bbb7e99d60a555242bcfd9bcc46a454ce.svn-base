package ddit.service;

import ddit.dao.ConfirmerDAOImpl;
import ddit.vo.ConfirmerVO;

public class ConfirmerServiceImpl implements IConfirmerService{
	private static ConfirmerServiceImpl instance = null;
	private ConfirmerDAOImpl dao = null;
	private ConfirmerServiceImpl() {
		if(dao==null) dao = ConfirmerDAOImpl.getInstance();
	}
	public ConfirmerServiceImpl getInstance() {
		if(instance==null) instance = new ConfirmerServiceImpl();
		return instance;
	}
	@Override
	public int insertConfirmer(ConfirmerVO confirmVo) {
		return dao.insertConfirmer(confirmVo);
	}
	@Override
	public int updateConfirmer(ConfirmerVO confirmVo) {
		return dao.updateConfirmer(confirmVo);
	}
	@Override
	public int deleteConfirmer(int MemNo) {
		return dao.deleteConfirmer(MemNo);
	}
	@Override
	public int confirmerOk() {
		return dao.confirmerOk();
	}
	
	

}
