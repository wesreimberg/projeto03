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
        <title>Alterar - WebContatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Alterar</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Contato c = Db.getContatos().get(i);
            if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                c.setDados(nome, email, telefone);
                Db.getContatos().set(i, c);
                response.sendRedirect("lista.jsp");
            }
        %>
        <form>
            <b>Índice: <%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome: <br/>
            <input type="text" name="nome" value="<%=c.getNome()%>"/>
            <br/>
            Email: <br/>
            <input type="text" name="email" value="<%=c.getEmail()%>"/>
            <br/>
            Telefone: <br/>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/>
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form>
    </body>
</html>
