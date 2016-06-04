package Servlet;

import Model.Mengambil;
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
 * @author Lycorice
 */
public class MengambilServlet extends HttpServlet {
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        DataMengambil dataMengambil = new DataMengambil();
        ArrayList<Mengambil> mengambilList = null;
        try {
            mengambilList = dataMengambil.list();

            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();

        } catch (SQLException ex) {
            Logger.getLogger(MahasiswaServlet.class.getName()).log(Level.SEVERE, null, ex);
        }

        request.setAttribute("mengambilList", mengambilList); // Will be available as ${jobs} in JSP
        request.getRequestDispatcher("/ListMahasiswa.jsp").forward(request, response);
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
