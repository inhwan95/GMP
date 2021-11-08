package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ddit.service.ManagerServiceImpl;
import ddit.service.MemberInfoServiceImpl;
import ddit.service.MemberServiceImpl;
import ddit.vo.DepartmentVO;
import ddit.vo.MemberInfoVO;
import ddit.vo.MemberVO;
import ddit.vo.SalaryVO;

@WebServlet("/manage/manage.do")
public class ManageController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/view/manager.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = null;
		HttpSession session = request.getSession();
		ManagerServiceImpl manageService = ManagerServiceImpl.getInstance();
		MemberServiceImpl memService = MemberServiceImpl.getInstance();
		MemberInfoServiceImpl memInfoService = MemberInfoServiceImpl.getInstance();
		
		int mem_no = (int) session.getAttribute("memNo");
		int mem_auth = (int) session.getAttribute("auth");
			
		String choice = request.getParameter("choice");
		System.out.println(choice);
		
		switch (choice) {
		
			case "departList":
				
				List<DepartmentVO> list = manageService.departmentList();
				System.out.println(list);
				
				jsonData = gson.toJson(list);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
	
			case "departMember":
				
				String depart = (String) request.getParameter("department");
				int departNo = Integer.parseInt(depart);
				
				List<MemberVO> list2 = manageService.departmentMember(departNo); 
				System.out.println(list2);
				
				jsonData = gson.toJson(list2);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				
				break;
			
			case "deptDetail":
				
				String No = request.getParameter("memNo");
				System.out.println(No);
				int memNo = Integer.parseInt(No);
				
				List<MemberVO> list3 = manageService.departMemberInfo(memNo);
				System.out.println(list3);
				
				jsonData = gson.toJson(list3);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				
				break;
			
			case "update":
				
				String tel = request.getParameter("tel");
				String addr1 = request.getParameter("addr1");
				String addr2 = request.getParameter("addr2");
				String mail = request.getParameter("mail");
				String mem = request.getParameter("memNO");
				int memNO = Integer.parseInt(mem);
				
				MemberVO mvo = new MemberVO();
				mvo.setMem_tel(tel);
				mvo.setMem_addr1(addr1);
				mvo.setMem_addr2(addr2);
				mvo.setMem_mail(mail);
				mvo.setMem_no(memNO);
				
				int cnt = memService.updateMem(mvo);
				System.out.println(cnt);
				
				jsonData = gson.toJson(cnt);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
				
			case "DPupdate" :
				
				String dept = request.getParameter("deptSelect");
				String posi = request.getParameter("posiSelect");
				String mem1 = request.getParameter("memNO");
				
				int deptNO = Integer.parseInt(dept);
				int posiNO = Integer.parseInt(posi);
				int memNO1 = Integer.parseInt(mem1);
				
				System.out.println(memNO1);
				
				MemberInfoVO memIfVO = new MemberInfoVO();
				memIfVO.setDept_no(deptNO);
				memIfVO.setPosi_no(posiNO);
				memIfVO.setMem_no(memNO1);

				int cnt1 = memInfoService.insertMemInfo(memIfVO);
				System.out.println(cnt1);
				
				jsonData = gson.toJson(cnt1);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				
				break;

			case "salaryList" :
					
				String mem2 = request.getParameter("memNo");
				System.out.println(mem2);
				int memNO2 = Integer.parseInt(mem2);
				System.out.println(memNO2);
				
				List<SalaryVO> salList = manageService.getSalaryList(memNO2);
				System.out.println(salList);
				
				jsonData = gson.toJson(salList);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				
				break;

			case "payments" :
				
				String mem3 = request.getParameter("memNo");
				int memNO3 = Integer.parseInt(mem3);
				String salType = request.getParameter("salType");
				String money = request.getParameter("salMoney");
				int salMoney = Integer.parseInt(money);
				
				System.out.println(mem3);
				System.out.println(salType);
				System.out.println(money);
				
				
				SalaryVO sVo = new SalaryVO();
				sVo.setMem_no(memNO3);
				sVo.setSalary_nm(salType);
				sVo.setSalary(salMoney);
				
				int cnt3 = manageService.insertSal(sVo);
				
				jsonData = gson.toJson(cnt3);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
				
		}
	
	
	
	}

}

















