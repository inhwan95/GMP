package ddit.service;

import ddit.dao.SanctionFileDAOImpl;
import ddit.vo.SanctionFileVO;

public class SanctionFileServiceImpl implements ISanctionFileService{

	private static SanctionFileServiceImpl instance = null;
	private SanctionFileDAOImpl dao = null;
	
	private SanctionFileServiceImpl() {
		if(dao==null) dao = SanctionFileDAOImpl.getInstance();
	}
	
	public static SanctionFileServiceImpl getInstance() {
		if(instance==null) instance = new SanctionFileServiceImpl();
		return instance;
	}

	@Override
	public int insertSanctionFile(SanctionFileVO sanFVo) {
		return dao.insertSanctionFile(sanFVo);
	}

	@Override
	public int updateSanctionFile(SanctionFileVO sanFVo) {
		return dao.updateSanctionFile(sanFVo);
	}

	@Override
	public int deleteSanctionFile(int fileNo) {
		return dao.deleteSanctionFile(fileNo);
	}

}
