package com.im.carsale;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/CarSale")
public class CarSaleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		//1.Collect all field values
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String brand = request.getParameter("brand");
		String photo = request.getParameter("photo");
		String price = request.getParameter("price");
		String year = request.getParameter("year");
		String milage= request.getParameter("milage");
		HttpSession session = request.getSession();
		String member = session.getAttribute("ID").toString();
		try{
			String sql = "INSERT INTO car(title, description, brand_id, photo, year, milage, price, member_id) VALUES (?,?,?,?,?,?,?,?)";
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, description);
			ps.setString(3, brand);
			ps.setString(4, photo);
			ps.setString(5, year);
			ps.setString(6, milage);
			ps.setString(7, price);
			ps.setString(8, member);
			
			ps.executeUpdate();
			response.sendRedirect("post_thankyou.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
