package org.dimigo.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.dimigo.vo.UserVO;
import org.json.simple.JSONObject;

import com.google.gson.Gson;

/**
 * Servlet implementation class BlogLoginServlet
 */
@WebServlet("/bloglogin")
public class BlogLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BlogLoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		RequestDispatcher rd = request.getRequestDispatcher("/myblog/login.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s", id, pwd);

		// id pwd 정합성 체크
		boolean result = "test@naver.com".equals(id);

		if (result) {
			// 세션에 사용자 정보 생성해 담기
			HttpSession session = request.getSession();
			UserVO user = new UserVO();
			user.setId(id);
			user.setName("박지교");
			user.setNickname("지교");
			
			session.setAttribute("user", user);
			
			response.sendRedirect("myblog/main.jsp");
			
			
		} else {
			request.setAttribute("msg", "error");
			RequestDispatcher rd = request.getRequestDispatcher("myblog/login.jsp");
			rd.forward(request, response);

			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */

	protected void doPost2(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		System.out.printf("id : %s, pwd : %s", id, pwd);

		response.setContentType("application/json;charset-utf-8");
		PrintWriter out = response.getWriter();
		/*
		 * { "id" : "testid" }
		 */
		out.println("{");
		out.println("\"id\": " + "\"" + id + "\"");

		out.println("}");

		// json simple library
		JSONObject json = new JSONObject();
		json.put("id", id);
		System.out.println(json.toJSONString());
		out.write(json.toJSONString());

		// gson library
		Gson gson = new Gson();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		System.out.println(gson.toJson(map));
		out.write(gson.toJson(map));

		out.close();

	}

}
