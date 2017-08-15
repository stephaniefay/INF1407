package br.com.meslin.calculadora;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Calculadora
 * 
 * @author Meslin
 */
@WebServlet(
		description = "Implementa uma calculadora na Web", 
		urlPatterns = { 
				"/Calculadora", 
				"/2016-09-21/Calculadora",
				"/outraPasta/Calculadora"
		})
public class Calculadora extends HttpServlet {
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.err.println("[Calculadora.doGet]");
		int op1 = 0, op2 = 0;
		int res = 0;
		String operacao;
		
		try
		{
			op1 = Integer.parseInt(request.getParameter("op1"));
			op2 = Integer.parseInt(request.getParameter("op2"));
		}
		catch (NumberFormatException e1)
		{
			request.setAttribute("erro", "números inválidos");
			request.getRequestDispatcher("erro.jsp").forward(request, response);
			return;
		}
		operacao = request.getParameter("operacao");
		
		if(operacao.equals("+")) res = op1 + op2;
		else if(operacao.equals("-")) res = op1 - op2;
		else if(operacao.equals("x")) res = op1 * op2;
		else if(operacao.equals("/"))
		{
			try
			{
				res = op1 / op2;
			}
			catch (Exception e)
			{
				request.setAttribute("erro", "divisão por zero");
				request.getRequestDispatcher("Erro").forward(request, response);
				return;
			}
		}
		
		request.setAttribute("res", res);
		
		request.getRequestDispatcher("calculadora.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.err.println("[Calculadora.doPost]");
	}

}
