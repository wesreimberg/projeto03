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
        <a href="empresa.jsp"><button>Cadastrar</button></a><hr/>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Razão Social</th>
                <th>CNPJ</th>
                <th>Telefone</th>
                <th>Web Site</th>
                <th>Comandos</th>
            </tr>
            <%for(ContatoEmpresa c: DbEmpresa.getContatoEmpresa()){%>
            <%int i = DbEmpresa.getContatoEmpresa().indexOf(c);%>
            <tr>
                <td><%=i%></td>
                <td><%=c.getNome()%></td>
                <td><%=c.getRazao()%></td>
                <td><%=c.getCNPJ()%></td>
                <td><%=c.getTelefone()%></td>
                <td><%=c.getWebsite()%></td>
                <td>
                    <a href="alterarEmpresa.jsp?i=<%=i%>"><button>Alterar</button></a>
                    <a href="excluirEmpresa.jsp?i=<%=i%>"><button>Excluir</button></a>
                </td>
            </tr>
            <%}%>
        </table>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
    
</html>
