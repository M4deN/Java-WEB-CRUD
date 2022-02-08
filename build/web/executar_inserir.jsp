<%-- 
    Document   : executar_inserir
    Created on : 21/01/2022, 11:46:56
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>

<%
    Cliente cliente = new Cliente();
    DAOCliente usd = new DAOCliente();
        
    try{
        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String cpf = request.getParameter("cpf");
        String telefone = request.getParameter("telefone");
        
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setCpf(cpf);
        cliente.setTelefone(telefone);
        usd.InserirCliente(cliente);
        out.print("Cliente Inserido com sucesso!");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    }catch(Exception erro){
        
        throw new RuntimeException("Erro Executar Inserir: "+erro);
    }
         
%>
