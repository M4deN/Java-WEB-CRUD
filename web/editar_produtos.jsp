<%-- 
    Document   : editar_produtos
    Created on : 24/01/2022, 10:23:40
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar</title>
    </head>
    <body>
             <%
   Produto produto = new Produto();
   DAOProduto usd = new DAOProduto();
    
    try{
     
        String nome = request.getParameter("nome");
        produto.setQtd(Integer.parseInt(request.getParameter("qtd")));
        produto.setId(Integer.parseInt(request.getParameter("id")));
        produto.setNomeproduto(nome);
  
        usd.EditarProduto(produto);
        out.print("Produto Editado com sucesso!");
        
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    }catch(Exception erro){
        
        throw new RuntimeException("Erro Executar Edição: "+erro);
    }
%>
    </body>
</html>
