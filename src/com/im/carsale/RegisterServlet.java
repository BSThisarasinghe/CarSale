package com.im.carsale;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public RegisterServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String tp = request.getParameter("tp");
		String pwd = request.getParameter("pwd");
		String confirm = request.getParameter("confirm");
		try{
			String sql = "INSERT INTO member(name, email, password, tp, role) VALUES (?,?,?,?,?)";
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, email);
			ps.setString(3, pwd);
			ps.setString(4, tp);
			ps.setString(5, "member");
			
			ps.executeUpdate();
			response.sendRedirect("register_thankyou.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
