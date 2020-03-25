package controller;

import model.DAO.EmployeeDAO;
import model.objects.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Validate")
public class Validate extends HttpServlet {

    EmployeeDAO employeeDAO = new EmployeeDAO();
    Employee employee = new Employee();


    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html; charset=UTF-8");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("submitFormLogin");

        if (action.equalsIgnoreCase("Ingresar")) {
            String user = request.getParameter("userInput");
            String password = request.getParameter("passwordInput");
            employee = employeeDAO.validate(user, password);

            if (employee.getNickname() != null) {
                request.getRequestDispatcher("controller?action=main").forward(request, response);
            } else {
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        } else {
            request.getRequestDispatcher("index.jsp").forward(request, response);

        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }
}
