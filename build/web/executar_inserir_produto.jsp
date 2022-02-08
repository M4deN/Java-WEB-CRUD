<%-- 
    Document   : executar_inserir_produto
    Created on : 21/01/2022, 14:44:43
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>

<%
    Produto prod = new Produto();
    DAOProduto usd = new DAOProduto();
    
    try{
        
        String nome = request.getParameter("nome");
        int qtd1 = Integer.parseInt(request.getParameter("qtd"));
        prod.setNomeproduto(nome);
        prod.setQtd(qtd1);
        
        usd.InserirProduto(prod);
        out.print("Produto Inserido com sucesso!");
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    }catch(Exception erro){
        
        throw new RuntimeException("Erro Executar Inserir produto: "+erro);
    }
%>
