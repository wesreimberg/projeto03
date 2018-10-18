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
        <title>Excluir</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Empresa</h1>
        <h2>Excluir</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            ContatoEmpresa c = DbEmpresa.getContatoEmpresa().get(i);
            if(request.getParameter("excluir") != null){
                DbEmpresa.getContatoEmpresa().remove(i);
                response.sendRedirect("listaEmpresa.jsp");
            }
        %>
        <form>
            Índice: <br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome: <br/>
            <b><%=c.getNome()%></b>
            <br/>
            Razão: <br/>
            <b><%=c.getRazao()%></b>
            <br/>
            CNPJ: <br/>
            <b><%=c.getCNPJ()%></b>
            <br/>
            Telefone: <br/>
            <b><%=c.getTelefone()%></b>
            <br/>
            Web Site: <br/>
            <b><%=c.getWebsite()%></b>
            <br/>
            <br/><input type="submit" name="excluir" value="Confirmar exclusão"/>
        </form>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
