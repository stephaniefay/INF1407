package br.com.meslin.chat;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Formulario
 */
@WebServlet({ "/Formulario", "/2016-10-05/Formulario" })
public class Formulario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ServletContext application = getServletContext();
		HttpSession session = request.getSession();
		
		// verifica se houve um novo texto desse usuário
		if(request.getParameter("texto") != null)
		{
			// cria uma nova entrada na lista
			Item item = new Item();
			item.setNick((String)session.getAttribute("nick"));
			item.setTexto(request.getParameter("texto"));
			item.setIp(request.getRemoteAddr());
			
			List<Item> lista;
			synchronized(application)
			{
				lista = (ArrayList<Item>) application.getAttribute("lista");
				if(lista == null) lista = new ArrayList<Item>(); 		
				lista.add(item);
				application.setAttribute("lista", lista);
			}
		}
		request.getRequestDispatcher("formulario.jsp").forward(request, response);
	}
}
