<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="utf-8">
<title>Calculado (Soma/Média)</title>
</head>
<body>
	<div class="container">
		<h1 class="text-center">Calcule a soma ou a média de dois valores</h1><br>
		<form action="calculadora SCS.jsp" method="post">
			<div>
				<label for="">1º Valor:</label>
				<input class="form-control" type="text" name="valor_um" placeholder="1º Valor" aria-label="default input example" >
			</div>
			<div>
				<label for="">2º Valor:</label>
				<input class="form-control" type="text" name="valor_dois" placeholder="2º Valor" aria-label="default input example">
			</div><br>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="conta" id="flexRadioDefault1" value="sum" required>
				<label class="form-check-label" for="flexRadioDefault1">Soma</label>
			</div>
			<div class="form-check">
				<input class="form-check-input" type="radio" name="conta" id="flexRadioDefault1" value="med" required>
				<label class="form-check-label" for="flexRadioDefault1">Média</label>
			</div><br>
			<div>
		    	<button class="btn btn-primary" type="submit">Calcular</button>
		  	</div>	
		</form><br>
		<h2 class="text-center">
			<%
			String conta = request.getParameter("conta");
			float a, b, media;
				
			if (conta != null){
				a = Float.parseFloat(request.getParameter("valor_um"));
				b = Float.parseFloat(request.getParameter("valor_dois"));
				if(conta.equals("sum")){
					out.println("A Soma dos Valores é: "+ (a+b));
				}else{
					media = (a + b)/2;
					out.println("A média dos Valores é: "+ media);
				}
			}
			%>
		</h2>
	</div>
</body>
</html>