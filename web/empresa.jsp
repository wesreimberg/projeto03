<%-- 
    Document   : empresa
    Created on : 17/10/2018, 14:43:07
    Author     : Marjorie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.ContatoEmpresa"%>
<%@page import="br.com.fatecpg.web.DbEmpresa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Empresa</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
          <h2>Cadastrar</h2>
        <%
            if(request.getParameter("inserir") != null){
                String nome = request.getParameter("nome");
                String razao = request.getParameter("razao");
                String cnpj = request.getParameter("cnpj");
                String telefone = request.getParameter("telefone");
                String website = request.getParameter("website");                
                ContatoEmpresa c = new ContatoEmpresa();
                c.setDadosEmpresa(nome, razao, cnpj, telefone, website);
                DbEmpresa.getContatoEmpresa().add(c);
                response.sendRedirect("listaEmpresa.jsp");
            }
        %>
        <form>
            Nome: <br/>
            <input type="text" name="nome"/><br/>
            Razão Social:<br/>
            <input type="text" name="razao"/><br/>
            CNPJ: <br/>
            <input type="text" name="cnpj"/><br/>            
            Telefone: <br/>
            <input type="text" name="telefone"/><br/>
            Web Site: <br/>
            <input type="text" name="website"/><br/><br/>
            <input type="submit" name="inserir" value="Inserir"/>
        </form>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
