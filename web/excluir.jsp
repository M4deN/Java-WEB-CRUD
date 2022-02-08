<%-- 
    Document   : excluir.jsp
    Created on : 24/01/2022, 08:26:23
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Excluir Cliente</title>
    </head>
    <body>
        <h1>EXCLUIR CLIENTE</h1>
        <form action="excluir_cliente.jsp" method="post" class="form">
            <label>Código Cliente</label><br>
            <input id="nome"type="text" name="id" value="<%=request.getParameter("id") %>"><br>
            <br><label>Nome Cliente</label><br>
            <input id="nome" type="text" name="nome" value="<%=request.getParameter("nome") %>"> <br>
            <br><label>CPF Cliente</label><br>
            <input id="nome" type="text" name="cpf" value="<%=request.getParameter("cpf") %>"> <br>
             <br><label>EMAIL Cliente</label><br>
            <input id="nome" type="text" name="email" value="<%=request.getParameter("email") %>"> <br>
            <br><label>Telefone Cliente</label><br>
            <input id="nome" type="text" name="telefone" value="<%=request.getParameter("telefone") %>"> <br>
            
            <button id="btn1" type="submit">EXCLUIR</button>                     
        </form>
    </body>
</html>
