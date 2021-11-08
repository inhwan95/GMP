package ddit.vo;

public class BoardVO {

	private int board_no;
	private int mem_no;
	private String board_nm;
	private String board_title;
	private String board_writer;
	private String board_content;
	private String board_date;

	public BoardVO() {}

	public BoardVO(int board_no, int mem_no, String board_nm, String board_title, String board_writer,
			String board_content, String board_date) {
		this.board_no = board_no;
		this.mem_no = mem_no;
		this.board_nm = board_nm;
		this.board_title = board_title;
		this.board_writer = board_writer;
		this.board_content = board_content;
		this.board_date = board_date;
	}

	public int getBoard_no() {
		return board_no;
	}

	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public String getBoard_nm() {
		return board_nm;
	}

	public void setBoard_nm(String board_nm) {
		this.board_nm = board_nm;
	}

	public String getBoard_title() {
		return board_title;
	}

	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}

	public String getBoard_writer() {
		return board_writer;
	}

	public void setBoard_writer(String board_writer) {
		this.board_writer = board_writer;
	}

	public String getBoard_content() {
		return board_content;
	}

	public void setBoard_content(String board_content) {
		this.board_content = board_content;
	}

	public String getBoard_date() {
		return board_date;
	}

	public void setBoard_date(String board_date) {
		this.board_date = board_date;
	}

	@Override
	public String toString() {
		return "BoardVO [board_no=" + board_no + ", mem_no=" + mem_no + ", board_nm=" + board_nm + ", board_title="
				+ board_title + ", board_writer=" + board_writer + ", board_content=" + board_content + ", board_date="
				+ board_date + "]";
	}

}