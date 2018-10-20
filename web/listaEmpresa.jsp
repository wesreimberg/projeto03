<%-- 
    Document   : list
    Created on : 06/10/2018, 09:06:21
    Author     : a
--%>

<%@page import="br.com.fatecpg.web.ContatoEmpresa"%>
<%@page import="br.com.fatecpg.web.DbEmpresa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro</h1>
        <h2>Empresas</h2>
        <a href="empresa.jsp"><button class="btn btn-lg btn-dark" texttype="submit" name="cadastrar">Cadastrar</button></a><hr/>
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Telefone</th>
                <th>Web Site</th>
                <th>Comandos</th>
            </tr>
            </thead>
            <%for(ContatoEmpresa c: DbEmpresa.getContatoEmpresa()){%>
            <%int i = DbEmpresa.getContatoEmpresa().indexOf(c);%>
              <tbody>
            <tr>
                <td><%=i%></td>
                <td><%=c.getNome()%></td>
                <td><%=c.getRazao()%></td>
                <td><%=c.getCNPJ()%></td>
                <td><%=c.getTelefone()%></td>
                <td><%=c.getWebsite()%></td>
                <td>
                    <a href="alterarEmpresa.jsp?i=<%=i%>"><button class="btn btn-lg btn-dark" texttype="submit" name="alterar">Alterar</button></a>
                    <a href="excluirEmpresa.jsp?i=<%=i%>"><button class="btn btn-lg btn-dark" texttype="submit" name="excluir">Excluir</button></a>
                </td>
            </tr>
            <%}%>
              </tbody>
        </table>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
    
</html>
