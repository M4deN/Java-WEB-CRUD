<%-- 
    Document   : novo_cliente
    Created on : 21/01/2022, 11:17:16
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Cliente</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>FORMULÁRIO USUÁRIO</h1>
        <form method="post" action="executar_inserir.jsp" class="form">
            <label for="nome">NOME</label><br>
            <input id="campo_nome" type="text" name="nome"/><br>
            <br><label for="cpf">CPF</label><br>
            <input id="campo_cpf" type="text" name="cpf"/><br>
            <br><label for="email">EMAIL</label><br>
            <input id="campo_email" type="email" name="email"/><br>
            <br><label for="telefone">TELEFONE</label><br>
            <input id="campo_telefone" type="text" name="telefone"/><br><br>
            <input id="btn" type="submit" value="ENVIAR"/> 
        </form>
    </body>
</html>
