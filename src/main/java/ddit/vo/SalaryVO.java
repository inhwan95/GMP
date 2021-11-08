package ddit.vo;

public class SalaryVO {

	private int salary_no;
	private int mem_no;
	private int salary;
    private String salary_nm;
    private String payday;
    
	public SalaryVO() {	}

	public SalaryVO(int salary_no, int mem_no, int salary, String salary_nm, String payday) {
		this.salary_no = salary_no;
		this.mem_no = mem_no;
		this.salary = salary;
		this.salary_nm = salary_nm;
		this.payday = payday;
	}

	public int getSalary_no() {
		return salary_no;
	}

	public void setSalary_no(int salary_no) {
		this.salary_no = salary_no;
	}

	public int getMem_no() {
		return mem_no;
	}

	public void setMem_no(int mem_no) {
		this.mem_no = mem_no;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public String getSalary_nm() {
		return salary_nm;
	}

	public void setSalary_nm(String salary_nm) {
		this.salary_nm = salary_nm;
	}

	public String getPayday() {
		return payday;
	}

	public void setPayday(String payday) {
		this.payday = payday;
	}

	@Override
	public String toString() {
		return "SalaryVO [salary_no=" + salary_no + ", mem_no=" + mem_no + ", salary=" + salary + ", salary_nm="
				+ salary_nm + ", payday=" + payday + "]";
	}
    
}
