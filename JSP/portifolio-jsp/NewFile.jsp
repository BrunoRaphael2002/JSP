<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="NewFile.css">
    <link rel="stylesheet" href="reset.css">
    <title>Conversor de Moedas</title>
</head>
<body>
    <header>
        <div class="boas-vindas"><h1> Seja bem vindo</h1>
        <p>O melhor conversor de moedas que o mundo já viu!</p></div>
        <nav>
            <ul>
                <li><a href="paginaemobras.html" >Sobre mim</a></li>
                 <li><a href="https://github.com/BrunoRaphael2002  " target="_blank">Github</a></li>
                  <li><a href="paginaemobras.html">Portifolio</a></li>
            </ul>
        </nav>
    </header>

    

   <main class="principal">
       
            <section class="Sobre-mim">
                <div class="texto-info">
                    <h1> Bruno Raphael</h1>
                    <p>Desenvolvedor Front-end</p>
                </div>
            </section>
       
            <section class="conversor">
       
                <section class="imagem-fundo">
                    <h1>O melhor e mais rapido conversor de moedas já Desenvolvido deixar sua vida mais efeciente!</h1>
                </section>

                <div class="real">
                    <h2>Converter Real para Dólar</h2>
                    <form class="form-real form" method="post" action="">
                        <p>Informe o valor em Reais (R$): <input type="text" name="real" required></p>
                        <input class="botao" type="submit" value="Converter">
                    </form>
                </div >
           	   <% 
                    double real = 0;
                    double dolar = 0;
                    if(request.getParameter("real") != null) {
                        real = Double.parseDouble(request.getParameter("real"));
                        dolar = real / 5.42;
                %>
                    <p>Valor em Dólar (US$): <strong><%= String.format("%.2f", dolar) %></strong></p>
                <% } %>
       
                <div class="dolar">
                    <h2>Converter Dólar para Real</h2>
                    <form class="form-dolar form" method="post" action="">
                        <p>Informe o valor em Dólar (US$): <input type="text" name="dolar" required></p>
                        <input class="botao" type="submit" value="Converter">
                    </form>
                </div>
                   <% 
                double dolar2 = 0;
                double real2 = 0;
                if(request.getParameter("dolar") != null) {
                    dolar2 = Double.parseDouble(request.getParameter("dolar"));
                    real2 = dolar2 * 5.42;
            %>
                <p>Valor em Reais (R$): <strong><%= String.format("%.2f", real2) %></strong></p>
            <% } %>
            </section>
                <div>
                    <p class="JSP">Projeto Desenvolvido em JSP</p>
                </div>
   </main>

   <footer>
    <p>Desenvolvido por Bruno Raphael Medeiros da Silva RA: 8132069</p>
   </footer>

</body>
</html>

 