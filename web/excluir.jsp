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
        <title>Excluir - WebContatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Excluir</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Contato c = Db.getContatos().get(i);
            if(request.getParameter("excluir") != null){
                Db.getContatos().remove(i);
                response.sendRedirect("lista.jsp");
            }
        %>
        <form>
            Índice: <br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome: <br/>
            <b><%=c.getNome()%></b>
            <br/>
            Email: <br/>
            <b><%=c.getEmail()%></b>
            <br/>
            Telefone: <br/>
            <b><%=c.getTelefone()%></b>
            <br/>
            <br/><input type="submit" name="excluir" value="Confirmar exclusão"/>
        </form>
    </body>
</html>
