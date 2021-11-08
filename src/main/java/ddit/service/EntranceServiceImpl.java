package ddit.service;

import ddit.dao.EntranceDAOImpl;
import ddit.vo.EntranceSectionVO;
import ddit.vo.EntranceVO;

public class EntranceServiceImpl implements IEntranceService{

	private static EntranceServiceImpl instance = null;
	private EntranceDAOImpl dao = null;
	
	private EntranceServiceImpl() {
		if(dao==null) dao = EntranceDAOImpl.getInstance();
	}
	
	public static EntranceServiceImpl getInstance() {
		if(instance==null) instance = new EntranceServiceImpl();
		return instance;
	}

	@Override
	public int insertEntrance(EntranceVO entVo) {
		return dao.insertEntrance(entVo);
	}

	@Override
	public int insertEntSection(EntranceSectionVO entSecVo) {
		return dao.insertEntSection(entSecVo);
	}
}
