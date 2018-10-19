
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
        <title>Excluir</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro Pessoa</h1>
        <h2>Excluir</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Pessoa p = DbPessoa.getPessoas().get(i);
            if(request.getParameter("excluir") != null){
                DbPessoa.getPessoas().remove(i);
                response.sendRedirect("listaPessoa.jsp");
            }
        %>
        <form>
            Índice: <br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Nome <br/>
            <b><%=p.getNome()%></b>
            <br/>
            CPF <br/>
            <b><%=p.getCpf()%></b>
            <br/>
            Email: <br/>
            <b><%=p.getEmail()%></b>
            <br/>
           Telefone: <br/>
            <b><%=p.getTelefone()%></b>
            <br/>
            <br/><input type="submit" name="excluir" value="Confirmar exclusão"/>
        </form>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
