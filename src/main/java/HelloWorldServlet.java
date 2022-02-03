import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import static java.lang.System.out;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        res.setContentType("text/html");
        String name = req.getParameter("name");
        PrintWriter out = res.getWriter();
        if(name == null) {
            out.println("Hello, World!");
        } else {
            out.println("<h1> Hello, " + name + "!</h1>");
        }
//        out.println("<h1>Hello, World!</h1>");

    }
}
