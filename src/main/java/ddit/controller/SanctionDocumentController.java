package ddit.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import ddit.service.ConfirmerServiceImpl;
import ddit.service.MemberServiceImpl;
import ddit.service.SanctionDocumentServiceImpl;
import ddit.vo.ConfirmerVO;
import ddit.vo.MemberVO;
import ddit.vo.SanctionDocumentVO;

@WebServlet("/sanction/sanctionDocument.do")
public class SanctionDocumentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.getRequestDispatcher("/WEB-INF/view/sanctionDocument.jsp").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		HttpSession session = request.getSession();
		
		String documentSelect = request.getParameter("documentSelect");
		
		String mem_id =  (String) session.getAttribute("id");
		int mem_no =  (int) session.getAttribute("memNo");
		int dept_no = (int) session.getAttribute("dept");
		System.out.println(session.getAttribute("dept"));
		int posi_no = (int) session.getAttribute("posi");
		System.out.println(session.getAttribute("posi"));
		String mem_nm = (String) session.getAttribute("name");		// writer

		
		String san_deadline = request.getParameter("san_deadline");
		String san_per1 = request.getParameter("san_per1");
		String san_per2 = request.getParameter("san_per2");
		String san_per3 =  request.getParameter("san_per3");
		String san_nm = request.getParameter("san_nm");
		String san_title = request.getParameter("san_title");
		String san_content = request.getParameter("san_content");
		
		String result = request.getParameter("result");
		String san_no = request.getParameter("san_no");
		
		System.out.println("documentSelect : "+documentSelect);
//		int san_no =  Integer.parseInt(request.getParameter("san_no"));
//		String san_nm = request.getParameter("san_nm");
//		String san_content = request.getParameter("san_content");
//		String san_deadline = request.getParameter("san_deadline");
//		String san_status = request.getParameter("san_status");
		
		Gson gson = new Gson();
		PrintWriter out = response.getWriter();
		String jsonData = null;
		
		SanctionDocumentServiceImpl service = SanctionDocumentServiceImpl.getInstance();
		ConfirmerServiceImpl conService = ConfirmerServiceImpl.getInstance();
		MemberServiceImpl memService = MemberServiceImpl.getInstance();
		
		MemberVO memVo = new MemberVO();
		memVo.setMem_id(mem_id);
		memVo.setMem_no(mem_no);
		
		List<SanctionDocumentVO> list = null;
		SanctionDocumentVO sanVo = null;
		ConfirmerVO confirmVo = null;
		int count = 0;
		
		switch (documentSelect){
			
			case "휴가신청서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
			case "회의보고서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				response.flushBuffer();
				break;
			case "주간업무보고서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				response.flushBuffer();
				break;
			case "지출결의서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				response.flushBuffer();
				break;
			case "기안서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				response.flushBuffer();
				break;
			case "품의서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				response.flushBuffer();
				break;
			case "사직서" :
				list = service.getSanDocList(documentSelect);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				response.flushBuffer();
				break;
			
			case "추가" :
				System.out.println("dddddd");
				
				String san_nm0 = request.getParameter("san_nm");
				String san_content0 = request.getParameter("san_content");
				String san_deadline0 = request.getParameter("san_deadline");
				
				String deadline = san_deadline0.toString().split("T")[0];
				
				String san_title0 = request.getParameter("san_title");
				String mem_nm0 = request.getParameter("mem_nm");
				String mem20 = request.getParameter("mem_nm2");
				String mem30 = request.getParameter("mem_nm3");
				String[] tt = mem20.split("_");
				String mem_nm2 =tt[1];
				//String mem_nm2 =mem20.split("_")[1];
				
				String[] dd = mem30.split("_");
				System.out.println(Arrays.toString(dd) + dd[1]);
				String mem_nm3 =dd[1];
				
				String mem0 = request.getParameter("mem_no");
				String mem2 = request.getParameter("mem_no2");
				String mem3 = request.getParameter("mem_no3");
				
				int mem_no0 = Integer.parseInt(mem0);
				int mem_no2 = Integer.parseInt(mem2);
				int mem_no3 = Integer.parseInt(mem3);
				
				sanVo = new SanctionDocumentVO();
				
				sanVo.setSan_nm(san_nm0);
				sanVo.setSan_content(san_content0);
				sanVo.setSan_deadline(deadline);
				sanVo.setSan_title(san_title0);
				sanVo.setMem_nm(mem_nm0);
				sanVo.setMem_nm2(mem_nm2);
				sanVo.setMem_nm3(mem_nm3);
				sanVo.setMem_no1(mem_no0);
				sanVo.setMem_no2(mem_no2);
				sanVo.setMem_no3(mem_no3);
				
				System.out.println(mem_nm3);
				System.out.println(mem_no3);
				
				
				count = service.insertDocument(sanVo);
				System.out.println(count);
				
//				count = service.insertSanDoc(sanVo);
//				confirmVo = new ConfirmerVO();
//				confirmVo.setConf_nm(san_per1);
//				confirmVo.setConf_nm(san_per2);
//				confirmVo.setConf_nm(san_per3);
//				int count2 = conService.insertConfirmer(confirmVo);
//				
				jsonData = gson.toJson(count);
				out.print(jsonData);
				response.flushBuffer();
				break;
				
			case "결재상태" :
				list = service.getStatusDoc(result);
				jsonData = gson.toJson(list);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
				
			case "결재서류세부" :
				// join 써서 여러개 만들어 내야함
				sanVo = service.getDetail(Integer.parseInt(san_no));
				jsonData = gson.toJson(sanVo);
				out.print(jsonData);
				System.out.println(jsonData);
				response.flushBuffer();
				break;
				
				
		}
		
	}

}
