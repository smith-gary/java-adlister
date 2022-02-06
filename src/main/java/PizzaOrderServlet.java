import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "PizzaOrderServlet", urlPatterns = "/pizza-order")
public class PizzaOrderServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        String crust = request.getParameter("crust-type");
//        String sauce = request.getParameter("sauce-type");
//        String size = request.getParameter("size-type");
//        String meats = request.getParameter("meats");
//        String nonmeat = request.getParameter("nonmeat");
//        String address = request.getParameter("address");
//
//        request.setAttribute("crust-type", crust);
//        request.setAttribute("sauce-type", sauce);
//        request.setAttribute("size-type", size);
//        request.setAttribute("meats", meats);
//        request.setAttribute("nonmeat", nonmeat);
//        request.setAttribute("address", address);

        request.getRequestDispatcher("/pizza-order.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println(request.getParameter("crust-type"));
        System.out.println(request.getParameter("sauce-type"));
        System.out.println(request.getParameter("size-type"));
//        System.out.println(request.getParameter("meats"));
        String[] meats = request.getParameterValues("meats");
        for (String meat : meats) {
            System.out.println(meat);
        }
//        System.out.println(request.getParameter("nonmeat"));
        String[] nonmeats = request.getParameterValues("nonmeat");
        for (String nonmeat : nonmeats) {
            System.out.println(nonmeat);
        }
        System.out.println(request.getParameter("address"));
    }
}