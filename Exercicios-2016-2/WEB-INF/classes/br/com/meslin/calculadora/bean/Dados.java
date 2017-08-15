package br.com.meslin.calculadora.bean;

public class Dados
{
	private double op1, op2, res;
	private String operacao;
	public Dados() {
		super();
		op1 = 0;
		op2 = 0;
		res = -1;
	}
	public Dados(double op1, double op2, double res, String operacao)
	{
		super();
		this.op1 = op1;
		this.op2 = op2;
		this.res = res;
		this.operacao = operacao;
	}
	public double getOp1()
	{
		return op1;
	}
	public void setOp1(double op1)
	{
		this.op1 = op1;
	}
	public void setOp1(String op1)
	{
		try
		{
			this.op1 = Double.parseDouble(op1);
		}
		catch (NumberFormatException e)
		{
			this.op1 = 0;
		}
	}
	
	public double getOp2()
	{
		return op2;
	}
	public void setOp2(double op2)
	{
		this.op2 = op2;
	}
	public void setOp2(String op2)
	{
		try
		{
			this.op2 = Double.parseDouble(op2);
		}
		catch (NumberFormatException e)
		{
			this.op2 = 0;
		}
	}

	public double getRes()
	{
		return res;
	}
	public void setRes(double res)
	{
		this.res = res;
	}
	public String getOperacao()
	{
		return operacao;
	}
	public void setOperacao(String operacao)
	{
		this.operacao = operacao;
	}
}
