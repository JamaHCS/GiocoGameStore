package controller;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class controller extends javax.servlet.http.HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        String action = getInitParameter("action");

        switch (action){
            case "main":
                request.getRequestDispatcher("main.jsp").forward(request, response);
                break;
            default:
                throw new AssertionError();
        }
    }
}
