/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Model.MataKuliah;
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
public class MengambilServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("text/html;charset=UTF-8");
        String matakuliah = request.getParameter("kode_mk");

        if (matakuliah == null) {
            matakuliah = "";
        }

        ArrayList<String> kode_Makul = (ArrayList< String>) request.getSession().getAttribute("kodeMakul");
        if (kode_Makul == null) {
            kode_Makul = new ArrayList<String>();
        }
        kode_Makul.add(matakuliah);

        request.getSession().setAttribute("kodeMakul", kode_Makul);
        DataMengambil ambil = new DataMengambil();

        try {
            ambil.InsertMakul((String) request.getSession().getAttribute("username"), matakuliah);

            response.sendRedirect("TampilanMHS.jsp");
            return;
        } catch (IOException | SQLException e) {
            e.printStackTrace();
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
