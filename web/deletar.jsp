<%-- 
    Document   : deletar
    Created on : 24/01/2022, 09:50:39
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Deletar Produtos</title>
    </head>
    <body>
      <h1>EXCLUIR PRODUTO</h1>
        <form action="deletar_produto.jsp" method="post" class="form">
            <label>Código Produto</label><br>
            <input id="nome"type="text" name="id" value="<%=request.getParameter("id") %>"><br>
            <br><label>Nome Produto</label><br>
            <input id="nome" type="text" name="nome" value="<%=request.getParameter("nome") %>"> <br>
            <br><label>Quantidade Produto</label><br>
            <input id="nome" type="text" name="qtd" value="<%=request.getParameter("qtd") %>"> <br>
            <button id="btn1" type="submit">EXCLUIR</button>                     
        </form>
    </body>
</html>
