<%-- 
    Document   : novo_produto
    Created on : 21/01/2022, 11:19:45
    Author     : Charlie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cadastrar Produto</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       <h1>FORMULÁRIO PRODUTO</h1>
        <form method="post" action="executar_inserir_produto.jsp" class="form">
            <label for="nome">NOME PRODUTO</label><br>
            <input id="campo_nome" type="text" name="nome"/><br><br>
            <br><label for="qtd">QUANTIDADE PRODUTO</label><br>
            <input id="campo_cpf" type="text" name="qtd"/><br><br>
            <input id="btn" type="submit" value="ENVIAR"/> 
        </form>
    </body>
</html>
