package ddit.util;

import ddit.vo.MemberVO;

public class SessionUtil {

		private int mem_no;
		private String mem_id;
		private MemberVO mVo;
		
		private SessionUtil() {	}
		private SessionUtil(int mem_no) {}
		
		private static SessionUtil instance;
		
		public static SessionUtil getInstance() {
			if (instance == null) {
				instance = new SessionUtil();
			}
			return instance;
		}
		
		public int getMem_no() {
			return mem_no;
		}
		public void setMem_no(int mem_no) {
			this.mem_no = mem_no;
		}
		public String getMem_id() {
			return mem_id;
		}
		public void setMem_id(String mem_id) {
			this.mem_id = mem_id;
		}
		public MemberVO getmVo() {
			return mVo;
		}
		public void setmVo(MemberVO mVo) {
			this.mVo = mVo;
		}
		
		
	
}
