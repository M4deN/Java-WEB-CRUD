<%-- 
    Document   : consultar_cliente
    Created on : 21/01/2022, 11:19:18
    Author     : Alecio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="MODEL.Cliente"%>
<%@page import="DAO.DAOCliente"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Clientes</title>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h1>Consultar Clientes</h1>
        <form action="consultar_cliente.jsp" method="post" class="form">
            <label>Pesquisar Por Nomes</label><br>
            <input id="nome" type="text" name="nome" placeholder="Digite o Nome"/>
            <input id="btn1" type="submit" value="PESQUISAR"/><br>
        </form><br>
        <div class="table-responsive"> 
           <%
           out.print("<table border='3' align='center'>");
               out.print("<tr>");
                     out.print("<th>ID</th>");
                     out.print("<th>NOME</th>");
                     out.print("<th>EMAIL</th>");
                     out.print("<th>CPF</th>");
                     out.print("<th>TELEFONE</th>");
                     out.print("<th>ATUALIZAR</th>");
                     out.print("<th>REMOVER</th>");
                 out.print("</tr>");
                 
                 DAOCliente cliente = new DAOCliente();
                 
                 if(request.getParameter("nome")=="" || request.getParameter("nome")==null){
                     
                    ArrayList<Cliente> lista = cliente.listarClientes();
                    for(int i=0;i<lista.size(); i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNome()+"</td>");
                        out.print("<td>"+lista.get(i).getEmail()+"</td>");
                        out.print("<td>"+lista.get(i).getCpf()+"</td>");
                        out.print("<td>"+lista.get(i).getTelefone()+"</td>");
                        out.print("<td><a href='editar.jsp?id=" + lista.get(i).getId() + "&nome=" + lista.get(i).getNome() + "&cpf=" + lista.get(i).getCpf() + "&email=" + lista.get(i).getEmail() + "&telefone=" + lista.get(i).getTelefone() +"'>EDITAR</a></td>");
                        out.print("<td><a href='excluir.jsp?id=" + lista.get(i).getId() + "&nome=" + lista.get(i).getNome() + "&cpf=" + lista.get(i).getCpf() + "&email=" + lista.get(i).getEmail() + "&telefone=" + lista.get(i).getTelefone() +"'>EXCLUIR</a></td>");
                        
                      out.print("</tr>");
                    }
                }else{
                    ArrayList<Cliente> lista = cliente.listarClientesNome(request.getParameter("nome"));
                    
                    for(int i=0;i<lista.size(); i++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(i).getId()+"</td>");
                        out.print("<td>"+lista.get(i).getNome()+"</td>");
                        out.print("<td>"+lista.get(i).getEmail()+"</td>");
                        out.print("<td>"+lista.get(i).getCpf()+"</td>");
                        out.print("<td>"+lista.get(i).getTelefone()+"</td>");
                        
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