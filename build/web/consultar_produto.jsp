<%-- 
    Document   : consultar_produto
    Created on : 21/01/2022, 11:19:59
    Author     : Charlie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Produto"%>
<%@page import="DAO.DAOProduto"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultar Produto</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
          <h1>Consultar Produtos</h1>
        <form action="consultar_produto.jsp" method="post" class="form">
            <label>Pesquisar Por Nomes</label><br>
            <input id="nome" type="text" name="nome" placeholder="Digite o Nome"/>
            <input id="btn1" type="submit" value="PESQUISAR"/><br>
        </form><br>
        <div class="table-responsive"> 
           <%
           out.print("<table border='3' align='center'>");
               out.print("<tr>");
                     out.print("<th>ID</th>");
                     out.print("<th>NOME PRODUTO</th>");
                     out.print("<th>QUANTIDADE</th>");
                     out.print("<th>ATUALIZAR</th>");
                     out.print("<th>REMOVER</th>");
                 out.print("</tr>");
                 
                 DAOProduto produto = new DAOProduto();
                 
                 if(request.getParameter("nome")=="" || request.getParameter("nome")==null){
                     
                    ArrayList<Produto> lista = produto.listarProdutos();
                    for(int i=0;i<lista.size(); i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNomeproduto()+"</td>");
                        out.print("<td id='qt'>"+lista.get(i).getQtd()+"</td>");
                        out.print("<td><a href='editar_prod.jsp?id=" + lista.get(i).getId() + "&nome=" + lista.get(i).getNomeproduto() + "&qtd=" + lista.get(i).getQtd() +"'>EDITAR</a></td>");
                        out.print("<td><a href='deletar.jsp?id=" + lista.get(i).getId() + "&nome=" + lista.get(i).getNomeproduto() + "&qtd=" + lista.get(i).getQtd() +"'>EXCLUIR</a></td>");
                        
                      out.print("</tr>");
                    }
                }else{
                    ArrayList<Produto> lista = produto.listarProdutoNome(request.getParameter("nome"));
                    
                    for(int i=0;i<lista.size(); i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNomeproduto()+"</td>");
                        out.print("<td id='qt'>"+lista.get(i).getQtd()+"</td>");
                        out.print("<td><a href='#'>EDITAR</a></td>");
                        out.print("<td><a href='#'>EXCLUIR</a></td>");
                        
                        out.print("</tr>");
                    }
                }
                 out.print("</table>");
            %>
           </div>
    </body>
</html>
