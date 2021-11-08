package ddit.service;

import java.util.List;

import ddit.vo.SanctionDocumentVO;

public interface ISanctionDocumentService {
		/**
		 * 	insert로 결재서류 올리기
		 * @param sanDocVo
		 * @return int
		 */
		public int insertSanDoc(SanctionDocumentVO sanDocVo);

		/**
		 * 
		 * @param sanDocVo
		 * @return int
		 */
		public int updateSanDoc(SanctionDocumentVO sanDocVo);
		
		/**
		 * 
		 * @param sanNo
		 * @return int
		 */
		public int deleteSanDoc(int sanNo);
		
		/**
		 * 
		 * @return List<SanctionDocumentVO>
		 */
		public List<SanctionDocumentVO> getSanDocList(String sanNm);

		/**
		 * 
		 * @param sanDocVo
		 * @return SanctionDocumentVO
		 */
		public List<SanctionDocumentVO> getSanDoc(SanctionDocumentVO sanDocVo);
		
		/**
		 * 결재 상태에 따라 구분되는 리스트 
		 * @param sanDocVo
		 * @return
		 */
		public List<SanctionDocumentVO> getStatusDoc(String san_status);
		
		/**
		 * 세부사항
		 * @param san_no
		 * @return
		 */
		public SanctionDocumentVO getDetail(int san_no);

		public int insertDocument(SanctionDocumentVO sanVo);
		
	}
