package br.com.meslin.calculadora.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.meslin.calculadora.bean.Dados;
@WebServlet({ "/OperacaoBinaria", "/acao/OperacaoBinaria" })
public class OperacaoBinaria extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Dados dados = (Dados) request.getAttribute("dados");
		String operacao = dados.getOperacao();
		double op1, op2, res =0;
		op1 = dados.getOp1();
		op2 = dados.getOp2();
		
		if(operacao.equals("+")) res = op1 + op2;
		else if(operacao.equals("-")) res = op1 - op2;
		else if(operacao.equals("x")) res = op1 * op2;
		else if(operacao.equals("/")) 
		{
			// TODO tratar divisão por zero
			res = op1 / op2;
		}
		else
		{
			request.setAttribute("tipo", "operando");
			request.getRequestDispatcher("../Erros/ErroEL").forward(request, response);
			return;
		}
		dados.setRes(res);
		request.setAttribute("dados", dados);
		request.getRequestDispatcher("../2016-10-05/calculadora.jsp").forward(request, response);
	}
}
