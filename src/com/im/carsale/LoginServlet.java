package com.im.carsale;


import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.im.carsale.DB;



@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		try{
			String sql = "SELECT * FROM member WHERE email=? AND password=?";
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, email);
			ps.setString(2, pw);
			ResultSet rs = ps.executeQuery();
			if(rs.next()){
				response.sendRedirect("index.jsp");
				HttpSession session = request.getSession();
				session.setAttribute("ID", rs.getString("id"));
				session.setAttribute("ROLE", rs.getString("role"));
			}else{
				response.sendRedirect("login.jsp");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
