package br.com.meslin.calculadora.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.meslin.auxiliar.Data;
import br.com.meslin.calculadora.bean.ErroBean;

/**
 * Servlet implementation class ErroEL
 */
@WebServlet(
		description = "Trata erros em geral", 
		urlPatterns = { 
				"/ErroEL", 
				"/Erros/ErroEL"
		})
public class ErroEL extends HttpServlet {
	@SuppressWarnings("deprecation")
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			ErroBean erro = new ErroBean();
			erro.setTipo((String) request.getAttribute("tipo"));
			erro.setMensagem("Deu erro");
			erro.setNumero(8752);
			Data data = new Data();
			Date hoje = new Date();
			data.setDia(hoje.getDate());
			data.setMes(hoje.getMonth()+1);
			data.setAno(hoje.getYear()+1900);
			erro.setData(data);
			request.setAttribute("erroAcontecido", erro);
			request.getRequestDispatcher("../2016-10-05/calculadora.jsp").forward(request, response);
	}
}
