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
        <title>Alterar</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Empresas</h1>
        <h2>Alterar</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            ContatoEmpresa c = DbEmpresa.getContatoEmpresa().get(i);
            if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String website = request.getParameter("website");
                c.setDadosEmpresa(nome, razao, cnpj, telefone, website);
                DbEmpresa.getContatoEmpresa().set(i, c);
                response.sendRedirect("listaEmpresa.jsp");
            }
        %>
        <form>
            Índice:<br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome: <br/>
            <input type="text" name="nome" value="<%=c.getNome()%>"/>
            <br/>
            Razão: <br/>
            <input type="text" name="razao" value="<%=c.getRazao()%>"/>
            <br/>
            CNPJ: <br/>
            <input type="text" name="cnpj" value="<%=c.getCNPJ()%>"/>
            <br/>
            Telefone: <br/>
            <input type="text" name="telefone" value="<%=c.getTelefone()%>"/>
            <br/>
            Web Site: <br/>
            <input type="text" name="website" value="<%=c.getWebsite()%>"/>
            <br/>
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
