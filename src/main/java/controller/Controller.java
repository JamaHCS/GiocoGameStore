package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Controller extends javax.servlet.http.HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = getInitParameter("submitFormLogin");

        if ("main".equals(action)) {
            request.getRequestDispatcher("main.jsp").forward(request, response);
        } else {
            throw new AssertionError();
        }
    }
}
