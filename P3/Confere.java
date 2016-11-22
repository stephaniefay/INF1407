package avaliacao.ano2016.semestre2.trab3;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Confere
 */
@WebServlet("/Confere")
public class Confere extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Lista todos os parâmetros (campos do formulário) em pares de nome e valor
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Enumeration<String> campos = request.getParameterNames();
		while(campos.hasMoreElements()) {
			String campo = campos.nextElement();
			System.out.println("Campo: " + campo + ", valor: " + request.getParameter(campo));
		}
	}
}
