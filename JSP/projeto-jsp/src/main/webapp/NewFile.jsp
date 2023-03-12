<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conversor de Moedas</title>
</head>
<body>
    <h1>Conversor de Moedas</h1>
    <hr>

    <h2>Converter Real para Dólar</h2>
    <form method="post" action="">
        <p>Informe o valor em Reais (R$): <input type="text" name="real" required></p>
        <input type="submit" value="Converter">
    </form>
    <%
        double real = 0;
        double dolar = 0;
        if(request.getParameter("real") != null) {
            real = Double.parseDouble(request.getParameter("real"));
            dolar = real / 5.42;
    %>
            <p>Valor em Dólar (US$): <strong><%= String.format("%.2f", dolar) %></strong></p>
    <%  } %>

    <hr>

    <h2>Converter Dólar para Real</h2>
    <form method="post" action="">
        <p>Informe o valor em Dólar (US$): <input type="text" name="dolar" required></p>
        <input type="submit" value="Converter">
    </form>
    <%
        double dolar2 = 0;
        double real2 = 0;
        if(request.getParameter("dolar") != null) {
            dolar2 = Double.parseDouble(request.getParameter("dolar"));
            real2 = dolar2 * 5.42;
    %>
            <p>Valor em Reais (R$): <strong><%= String.format("%.2f", real2) %></strong></p>
    <%  } %>

</body>
</html>