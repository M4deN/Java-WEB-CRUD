<%-- 
    Document   : deletar_produto
    Created on : 24/01/2022, 09:56:39
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Deletar</title>
    </head>
    <body>
         <%
    Produto produto = new Produto();
    DAOProduto usd = new DAOProduto();
    
    try{
     
        produto.setId(Integer.parseInt(request.getParameter("id")));
        
        
        usd.ExcluirProduto(produto);
        out.print("Produto Excluido com sucesso!");
        
        out.print("<meta http-equiv='refresh' content='3, url=index.jsp'>");
        
    }catch(Exception erro){
        
        throw new RuntimeException("Erro Executar Exclusão: "+erro);
    }
%>
    </body>
</html>
