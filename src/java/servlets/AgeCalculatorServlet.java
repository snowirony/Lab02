package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ronald Tran
 */
public class AgeCalculatorServlet extends HttpServlet 
{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
        return;
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        // Attributes
        String ageInput = request.getParameter("age_input");
        int age;
        
        // Request attributes
        request.setAttribute("ageInput", ageInput);
        
        // Validation check
        if (ageInput == null || ageInput.equals("")) // If user inputs nothing
        {
            String invalidMessage1 = "You must give your current age.";
            request.setAttribute("message", invalidMessage1);
            
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
            return;
        }
        else
        {            
            try
            {
                age = Integer.parseInt(ageInput);
                age++;
                String nextBirthday = "Your age will be " + age;
                request.setAttribute("message", nextBirthday);
            }
            catch (Exception e)
            {
                String invalidMessage2 = "You must enter a number.";
                request.setAttribute("message", invalidMessage2);
            }
            
            getServletContext().getRequestDispatcher("/WEB-INF/agecalculator.jsp").forward(request, response);
            return;
        }
    }

}
