package br.com.meslin.portal;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/NoticiasXML", "/2016-11-21/NoticiasXML" })
public class NoticiasXML extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			Thread.sleep(2 * 1000);
		}
		catch (InterruptedException e) {
			e.printStackTrace();
		}
		// obtenho a informação
		String tipo = request.getParameter("tipo");
		String noticia;
		switch (tipo)
		{
			case "OEstado":
				noticia = "<paragrafo>O Estado:</paragrafo>"
						+ "<paragrafo>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</paragrafo>"
						+ "<paragrafo>Vestibulum molestie dui ac quam tincidunt, eget iaculis felis euismod.</paragrafo>"
						+ "<paragrafo>Interdum et malesuada fames ac ante ipsum primis in faucibus.</paragrafo>";
				break;

			case "OPais":
				noticia = "<paragrafo>O Pais:</paragrafo>"
						+ "<paragrafo>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</paragrafo>"
						+ "<paragrafo>Vestibulum molestie dui ac quam tincidunt, eget iaculis felis euismod.</paragrafo>"
						+ "<paragrafo>Interdum et malesuada fames ac ante ipsum primis in faucibus.</paragrafo>";
				break;

			default:
				noticia = "<paragrafo>Tipo de noticia não encontrada</paragrafo>";
				break;
		}
		
		// gero a resposta
		PrintWriter out = response.getWriter();
		response.setContentType("text/xml");
		out.println("<?xml version='1.0'?>\n<noticia>" + noticia + "</noticia>");
	}
}
