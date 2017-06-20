package com.im.carsale;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/AddBrand")
public class AddBrandServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AddBrandServlet() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String name = request.getParameter("name");
		
		try{
			String sql = "INSERT INTO brand(name) VALUES (?)";
			Connection con = DB.getCon();
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, name);
			
			
			ps.executeUpdate();
			response.sendRedirect("brandList.jsp");
		}catch(Exception e){
			e.printStackTrace();
		}
	}

}
