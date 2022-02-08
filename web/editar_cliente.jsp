<%-- 
    Document   : editar_cliente
    Created on : 24/01/2022, 09:08:36
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
         <%
    Cliente cliente = new Cliente();
    DAOCliente usd = new DAOCliente();
    
    try{
     
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        
        cliente.setId(Integer.parseInt(request.getParameter("id")));
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setCpf(cpf);
        cliente.setTelefone(telefone);     
        
        
        usd.EditarCliente(cliente);
        out.print("Cliente Editado com sucesso!");
        
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    }catch(Exception erro){
        
        throw new RuntimeException("Erro Executar Edição: "+erro);
    }
%>
    </body>
</html>
