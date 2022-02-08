<%-- 
    Document   : editar
    Created on : 22/01/2022, 09:10:26
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <title>Editar Clientes</title>
    </head>
    <body>
        <h1>Editar Clientes</h1>
         <form action="editar_cliente.jsp" method="post" class="form">
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
            
            <button id="btn1" type="submit">SALVAR</button>                     
        </form>
    </body>
</html>
