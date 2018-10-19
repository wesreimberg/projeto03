/**
 *
 * @author Thalisson
 */

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page import="br.com.fatecpg.web.DbPessoa"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Cadastro Pessoas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
          <h2>Cadastrar</h2>
        <%
            if(request.getParameter("inserir") != null){
                String nome = request.getParameter("nome");
                String cpf = request.getParameter("cpf");
                String email = request.getParameter("email");
                String telefone= request.getParameter("telefone");
                Pessoa p = new Pessoa();
                p.setDadosPessoa(nome, cpf, email, telefone);
                DbPessoa.getPessoas().add(p);
                response.sendRedirect("listaPessoa.jsp");
            }
        %>
        <form>
           Nome: <br/>
            <input type="text" name="nome"/><br/>
            CPF<br/>
            <input type="text" name="cpf"/><br/>
            Email <br/>
            <input type="text" name="email"/><br/>            
            Telefone: <br/>
            <input type="text" name="telefone"/><br/>
            <input type="submit" name="inserir" value="Inserir"/>
        </form>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
