/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.Mahasiswa;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author emack
 */
public class MahasiswaServlet extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        DataMahasiswa dataMahasiswa = new DataMahasiswa();
        ArrayList<Mahasiswa> mahaList = null;
        try {
            mahaList = dataMahasiswa.list();
            
            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            
        } catch (SQLException ex) {
            Logger.getLogger(MahasiswaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        request.getSession().setAttribute("mahaList", mahaList); // Will be available as ${jobs} in JSP
        request.getRequestDispatcher("/TampilanMHS.jsp").forward(request, response);
//        response.sendRedirect("/ListMahasiswa.jsp");
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     */
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        processRequest(req, resp);
    }
}
