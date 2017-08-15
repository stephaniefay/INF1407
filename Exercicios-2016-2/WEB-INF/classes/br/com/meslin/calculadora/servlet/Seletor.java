package br.com.meslin.calculadora.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.meslin.calculadora.bean.Dados;
@WebServlet({ "/Seletor", "/acao/Seletor" })
public class Seletor extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		Dados dados = new Dados();
		dados.setOp1(request.getParameter("op1"));
		dados.setOp2(request.getParameter("op2"));
		dados.setOperacao(request.getParameter("operacao"));
		request.setAttribute("dados", dados);
		
		if(acao.equals(" = ")) request.getRequestDispatcher("OperacaoBinaria").forward(request, response);
		else if(acao.equals("x2") || 
				acao.equals("Vx") || 
				acao.equals("lnx")) request.getRequestDispatcher("OperacaoUnaria").forward(request, response);
		else
		{
			// TODO erro!!!
		}
	}
}
