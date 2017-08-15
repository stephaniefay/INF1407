package br.com.meslin.auxiliar;

public class Data
{
	private int dia, mes, ano;

	public String getDia()
	{
		return String.format("%02d", dia);
	}

	public void setDia(int dia)
	{
		this.dia = dia;
	}

	public int getMes()
	{
		return mes;
	}

	public void setMes(int mes)
	{
		this.mes = mes;
	}

	public int getAno()
	{
		return ano;
	}
	public String getAno2() {
		return String.format("%02d", ano % 100);
	}

	public void setAno(int ano)
	{
		this.ano = ano;
	}
}
