package ddit.vo;

public class ConfirmerVO {

	private int conf_idx;
	private int san_no;
	private int mem_no;
	private int conf_step;
	private int conf_ok;
	private String conf_nm;
	
	public ConfirmerVO() {}

	public ConfirmerVO(int conf_idx, int san_no, int mem_no, int conf_step, int conf_ok, String conf_nm) {
		this.conf_idx = conf_idx;
		this.san_no = san_no;
		this.mem_no = mem_no;
		this.conf_step = conf_step;
		this.conf_ok = conf_ok;
		this.conf_nm = conf_nm;
	}

	public int getConf_idx() {
		return conf_idx;
	}

	public void setConf_idx(int conf_idx) {
		this.conf_idx = conf_idx;
	}

	public int getSan_no() {
		return san_no;
	}

	public void setSan_no(int san_no) {
		this.san_no = san_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getConf_step() {
		return conf_step;
	}

	public void setConf_step(int conf_step) {
		this.conf_step = conf_step;
	}

	public int getConf_ok() {
		return conf_ok;
	}

	public void setConf_ok(int conf_ok) {
		this.conf_ok = conf_ok;
	}

	public String getConf_nm() {
		return conf_nm;
	}

	public void setConf_nm(String conf_nm) {
		this.conf_nm = conf_nm;
	}

	@Override
	public String toString() {
		return "ConfirmerVO [conf_idx=" + conf_idx + ", san_no=" + san_no + ", mem_no=" + mem_no + ", conf_step="
				+ conf_step + ", conf_ok=" + conf_ok + ", conf_nm=" + conf_nm + "]";
	}

}