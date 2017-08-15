package br.com.meslin.portal;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/2016-11-21/Noticias")
public class Noticias extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Thread.sleep(1 * 1000);
		}
		catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// obtenho a informação
		String tipo = request.getParameter("tipo");
		String noticia;
		switch (tipo)
		{
			case "OMundo":
				noticia = "O Mundo: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum molestie dui ac quam tincidunt, eget iaculis felis euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse posuere lorem diam, vitae posuere ex convallis eu. Nunc rhoncus, tellus lobortis iaculis pulvinar, massa nulla suscipit libero, at feugiat tellus diam mollis dolor. Praesent eleifend vel tellus et lobortis. Donec placerat pulvinar congue. Mauris a odio eget lacus elementum iaculis. Suspendisse imperdiet metus quis ex maximus, eget sagittis purus sollicitudin.";
				break;

			case "ACidade":
				noticia = "A Cidade: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum molestie dui ac quam tincidunt, eget iaculis felis euismod. Interdum et malesuada fames ac ante ipsum primis in faucibus. Suspendisse posuere lorem diam, vitae posuere ex convallis eu. Nunc rhoncus, tellus lobortis iaculis pulvinar, massa nulla suscipit libero, at feugiat tellus diam mollis dolor. Praesent eleifend vel tellus et lobortis. Donec placerat pulvinar congue. Mauris a odio eget lacus elementum iaculis. Suspendisse imperdiet metus quis ex maximus, eget sagittis purus sollicitudin.";
				break;

			default:
				noticia = "Tipo de notícia não encontrada";
				break;
		}
		
		// gero a resposta
		PrintWriter out = response.getWriter();
		response.setContentType("text/plain");
		out.println(noticia);
	}
}
