package ddit.dao;

import ddit.vo.SanctionFileVO;

public interface ISanctionFileDAO {
	
	/**
	 * 
	 * @param sanFVo
	 * @return int
	 */
	public int insertSanctionFile(SanctionFileVO sanFVo);
	
	/**
	 * 
	 * @param sanFVo
	 * @return int
	 */
	public int updateSanctionFile(SanctionFileVO sanFVo);

	/**
	 * 
	 * @param fileNo
	 * @return int
	 */
	public int deleteSanctionFile(int fileNo);
	
}
