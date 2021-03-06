package helios.siteweb.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = "/deconnexion")
public class DeconnexionServlet extends HttpServlet {
	private static final long serialVersionUID = -2793586799100543352L;

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.getSession().removeAttribute("utilisateurConnecte");
		response.sendRedirect("connexion");
	}
}
