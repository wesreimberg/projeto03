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
        <title>Inserir - WebContatos</title>
    </head>
    <body>
        <h1>WebContatos</h1>
        <h2>Inserir</h2>
        <%
            if(request.getParameter("inserir") != null){
                String nome = request.getParameter("nome");
                String email = request.getParameter("email");
                String telefone = request.getParameter("telefone");
                Contato c = new Contato();
                c.setDados(nome, email, telefone);
                Db.getContatos().add(c);
                response.sendRedirect("lista.jsp");
            }
        %>
        <form>
            Nome: <br/>
            <input type="text" name="nome"/><br/>
            Email: <br/>
            <input type="text" name="email"/><br/>
            Telefone: <br/>
            <input type="text" name="telefone"/><br/><br/>
            <input type="submit" name="inserir" value="Inserir"/>
        </form>
    </body>
</html>
