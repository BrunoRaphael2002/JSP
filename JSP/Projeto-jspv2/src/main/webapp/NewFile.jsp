<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Conversor de Moedas</title>
</head>
<body>
    <h1>Conversor de Moedas</h1>
    <form method="post">
        <label for="valorEmReal">Digite o valor em reais:</label>
        <input type="number" step="0.01" min="0.00" max="9999999999.99" name="valorEmReal" id="valorEmReal" required>
        <br><br>
        <button type="submit">Converter</button>
    </form>

    <% 
        // Define a cotação do dólar (1 dólar = 5 reais)
        double cotacaoDolar = 5.0;
        
        // Recupera o valor em reais enviado pelo formulário
        String valorEmRealStr = request.getParameter("valorEmReal");
        
        // Se o valor em reais foi enviado pelo formulário
        if (valorEmRealStr != null) {
            // Converte o valor em reais para dólares
            double valorEmReal = Double.parseDouble(valorEmRealStr);
            double valorEmDolar = valorEmReal / cotacaoDolar;
            
            // Exibe o resultado da conversão
            out.println("<br><br><h3>O valor de " + valorEmReal + " reais equivale a " + valorEmDolar + " dólares.</h3>");
        }
    %>
</body>
</html>