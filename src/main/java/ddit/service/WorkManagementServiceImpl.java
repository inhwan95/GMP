package ddit.service;

import java.util.List;

import ddit.dao.WorkManagementDAOImpl;
import ddit.vo.WorkManagementVO;

public class WorkManagementServiceImpl implements IWorkManagementService{

	private static WorkManagementServiceImpl instance = null;
	private WorkManagementDAOImpl dao = null;
	
	private WorkManagementServiceImpl() {
		if(dao==null) dao = WorkManagementDAOImpl.getInstance();
	}
	
	public static WorkManagementServiceImpl getInstance() {
		if(instance==null) instance = new WorkManagementServiceImpl();
		return instance;
	}

	@Override
	public int insertWork(WorkManagementVO workVo) {
		return dao.insertWork(workVo);
	}

	@Override
	public int updateWork(WorkManagementVO workVo) {
		return dao.updateWork(workVo);
	}

	@Override
	public int deleteWork(String memNo) {
		return dao.deleteWork(memNo);
	}

	@Override
	public List<WorkManagementVO> getWorkList() {
		return dao.getWorkList();
	}

	@Override
	public WorkManagementVO getWork(int memNo) {
		return dao.getWork(memNo);
	}

	@Override
	public List<WorkManagementVO> getsearchWorkList(String memNm) {
		return dao.getsearchWorkList(memNm);
	}

}
