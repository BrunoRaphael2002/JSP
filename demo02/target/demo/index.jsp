<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PORTIFOLIO JSP</title>
</head>
<body>
    <h1>olá mundo</h1>
    <% String nome;
 int vogais = 0, consoantes = 0;
 
 nome = request.getParameter("nome").toUpperCase();
 for (int i=0; i < nome.length(); i++)
 {
switch (nome.charAt(i))
{
case ‘A’:
case ‘E’:
case ‘I’:
case ‘O’:
case ‘U’: vogais++; break;
case ‘ ‘: break;
default : consoantes++;
}
 }
%>
<h2>Seu nome</h2>
<p>Qtde. de caracteres: <%= nome.length() %></p>
<p>Qtde. de vogais: <%= vogais %></p>
<p>Qtde. de consoantes: <%= consoantes %></p>
</body>
</html>