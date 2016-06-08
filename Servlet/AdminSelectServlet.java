/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Admin;
import Model.Mahasiswa;
import Model.MataKuliah;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Lycorice
 */
public class AdminSelectServlet extends HttpServlet {
@Override
    protected void doGet (HttpServletRequest request, HttpServletResponse respone)
            throws ServletException, IOException {
        try {
            String selectNim = request.getParameter("slcnim");
            request.getSession().setAttribute("selectNim", selectNim);
            
            AdminSelectData dataSelectAdmin = new AdminSelectData();
            dataSelectAdmin.setNim(selectNim);
            ArrayList<Mahasiswa> adminSelectList = dataSelectAdmin.list();
            request.setAttribute("adminSelectList", adminSelectList);
            
            AdminSelectData2 dataSelectAdmin2 = new AdminSelectData2();
            dataSelectAdmin2.setNim(selectNim);
            ArrayList<MataKuliah> adminSelectList2 = dataSelectAdmin2.list();
            request.setAttribute("adminSelectList2", adminSelectList2);
            request.getRequestDispatcher("admin_select.jsp").forward(request, respone);
        } catch (SQLException ex) {
            throw new ServletException("Cannot obtain products from DB", ex);
        }
    }
}
