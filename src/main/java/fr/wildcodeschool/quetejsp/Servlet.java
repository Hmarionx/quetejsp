package fr.wildcodeschool.quetejsp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.InetAddress;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;


@WebServlet(name = "Quete JSP", urlPatterns = {"/quetejsp"})
public class Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String myIp = InetAddress.getLocalHost().getHostAddress();
        request.setAttribute("myIp", myIp);
        DateFormat dateformat = new SimpleDateFormat("EEEE dd/MM/yyyy");
        String myDate = dateformat.format(new Date());
        request.setAttribute("myDate", myDate);
        request.setAttribute("fibonacci", (Fibonacci.fibonacci(20)));
        request.getRequestDispatcher("/WEB-INF/QueteJSP.jsp").forward(request, response);

    }
}
