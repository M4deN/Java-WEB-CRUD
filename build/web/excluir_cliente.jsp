<%-- 
    Document   : excluir_cliente
    Created on : 24/01/2022, 08:39:11
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Excluir</title>
    </head>
    <body>
       <%
    Cliente cliente = new Cliente();
    DAOCliente usd = new DAOCliente();
    
    try{
     
        cliente.setId(Integer.parseInt(request.getParameter("id")));
        
        
        usd.ExcluirCliente(cliente);
        out.print("Cliente Excluido com sucesso!");
        
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    }catch(Exception erro){
        
        throw new RuntimeException("Erro Executar Exclusão: "+erro);
    }
%>
    </body>
</html>
