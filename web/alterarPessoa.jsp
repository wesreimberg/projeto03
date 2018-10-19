/**
 *
 * @author Thalisson
 */

<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page import="br.com.fatecpg.web.DbPessoa"%>
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
        <h1>Cadastro de Pessoa</h1>
        <h2>Alterar</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Pessoa p = DbPessoa.getPessoas().get(i);
            if(request.getParameter("alterar") != null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String telefone= request.getParameter("telefone");
                p.setDadosPessoa(nome, cpf, email, telefone);
                DbPessoa.getPessoas().set(i, p);
                response.sendRedirect("listaPessoa.jsp");
            }
        %>
        <form>
            Índice:<br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome <br/>
            <input type="text" name="nome" value="<%=p.getNome()%>"/>
            <br/>
            CPF <br/>
            <input type="text" name="cpf" value="<%=p.getCpf()%>"/>
            <br/>
            Email: <br/>
            <input type="text"  name="email" value="<%=p.getEmail()%>"/>
            <br/>
            Telefone: <br/>
            <input type="text" name="telefone" value="<%=p.getTelefone()%>"/>
            <br/>
           
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
