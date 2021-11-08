package ddit.vo;

public class EntranceVO {

	private int esec_idx;
	private String enter_time;
	private String leave_time;
	private String ent_nm;
	
	public EntranceVO() {}

	public EntranceVO(int esec_idx, String enter_time, String leave_time, String ent_nm) {
		this.esec_idx = esec_idx;
		this.enter_time = enter_time;
		this.leave_time = leave_time;
		this.ent_nm = ent_nm;
	}

	public int getEsec_idx() {
		return esec_idx;
	}

	public void setEsec_idx(int esec_idx) {
		this.esec_idx = esec_idx;
	}

	public String getEnter_time() {
		return enter_time;
	}

	public void setEnter_time(String enter_time) {
		this.enter_time = enter_time;
	}

	public String getLeave_time() {
		return leave_time;
	}

	public void setLeave_time(String leave_time) {
		this.leave_time = leave_time;
	}

	public String getEnt_nm() {
		return ent_nm;
	}

	public void setEnt_nm(String ent_nm) {
		this.ent_nm = ent_nm;
	}

	@Override
	public String toString() {
		return "EntranceVO [esec_idx=" + esec_idx + ", enter_time=" + enter_time + ", leave_time=" + leave_time
				+ ", ent_nm=" + ent_nm + "]";
	}

}