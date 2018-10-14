<%-- 
    Document   : list
    Created on : 06/10/2018, 09:06:21
    Author     : a
--%>

<%@page import="br.com.fatecpg.web.Contato"%>
<%@page import="br.com.fatecpg.web.Db"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista - WebContatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Lista</h2>
        <a href="inserir.jsp"><button>Inserir</button></a><hr/>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Email</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>
            <%for(Contato c: Db.getContatos()){%>
            <%int i = Db.getContatos().indexOf(c);%>
            <tr>
                <td><%=i%></td>
                <td><%=c.getNome()%></td>
                <td><%=c.getEmail()%></td>
                <td><%=c.getTelefone()%></td>
                <td>
                    <a href="alterar.jsp?i=<%=i%>"><button>Alterar</button></a>
                    <a href="excluir.jsp?i=<%=i%>"><button>Excluir</button></a>
                </td>
            </tr>
            <%}%>
        </table>
    </body>
</html>
