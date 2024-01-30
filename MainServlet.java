import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.Random;

@WebServlet("/MainServlet")
public class MainServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private int userinput, rn;
    private String result, hname;

    public MainServlet() {
        super();
    }

    int compare() {
        if (rn == userinput) {
            result = "You both are unison!";
            return 0;
        } else {
            switch (rn) {
                case 1:
                    if (userinput == 2) {
                        result = "Computer wins! Snake drinks your Water";
                        return 1;
                    } else {
                        result = "You won! You shooted the Snake";
                        return 2;
                    }
                case 2:
                    if (userinput == 1) {
                        result = "You won! You drank the water";
                        return 2;
                    } else {
                        result = "Computer wins! Your gun became defunct because of water";
                        return 1;
                    }
                case 3:
                    if (userinput == 1) {
                        result = "Computer wins! The gun shooted you";
                        return 1;
                    } else {
                        result = "You won! You made the gun defunct";
                        return 2;
                    }
                default:
                    result = "Enter a number between 1 and 3";
                    return -1; // Indicating an error condition
            }
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String userin = request.getParameter("gps");
        userinput = Integer.parseInt(userin);
        hname = request.getParameter("user");
        String cscore = request.getParameter("cscore");
        String uscore = request.getParameter("uscore");
        int us = Integer.parseInt(uscore);
        int cs = Integer.parseInt(cscore);

        Random random = new Random();
        int lowerBound = 1;
        int upperBound = 3;
        rn = random.nextInt(upperBound - lowerBound + 1) + lowerBound;

        Gpsjdbc1 o = new Gpsjdbc1(hname);

        int comparisonResult = compare();

        if (comparisonResult == 2) {
            us += 1;
        } else if (comparisonResult == 1) {
            cs += 1;
        }

        if (us == 3 || cs == 3) {
            if (us == 3) {
                request.setAttribute("username", hname);
                RequestDispatcher requ = request.getRequestDispatcher("user.jsp");
                requ.forward(request, response);
                o.update(1);
            } else {
                request.setAttribute("username", hname);
                RequestDispatcher requ = request.getRequestDispatcher("system.jsp");
                requ.forward(request, response);
                o.update(0);
            }
        } else {
            request.setAttribute("result", result);
            request.setAttribute("username", hname);
            request.setAttribute("uscore", us);
            request.setAttribute("cscore", cs);
            RequestDispatcher requ = request.getRequestDispatcher("main.jsp");
            requ.forward(request, response);
        }
        doGet(request, response);
    }
}
