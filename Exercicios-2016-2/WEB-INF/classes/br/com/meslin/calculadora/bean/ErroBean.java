package br.com.meslin.calculadora.bean;

import br.com.meslin.auxiliar.Data;

public class ErroBean
{
	private int numero;
	private String tipo;
	private String mensagem;
	private Data data;
	public ErroBean()
	{
		super();
		data = new Data();
	}
	public int getNumero()
	{
		return numero;
	}
	public void setNumero(int numero)
	{
		this.numero = numero;
	}
	public String getTipo()
	{
		return tipo;
	}
	public void setTipo(String tipo)
	{
		this.tipo = tipo;
	}
	public String getMensagem()
	{
		return mensagem;
	}
	public void setMensagem(String mensagem)
	{
		this.mensagem = mensagem;
	}
	public Data getData()
	{
		return data;
	}
	public void setData(Data data)
	{
		this.data = data;
	}
}
