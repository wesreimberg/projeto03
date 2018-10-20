<%-- 
  *
  * @author Thalisson
  *
--%>
<%@page import="br.com.fatecpg.web.Pessoa"%>
<%@page import="br.com.fatecpg.web.DbPessoa"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pessoas</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro</h1>
        <h2>Pessoas</h2>
        <a href="cadastraPessoa.jsp"><button class="btn btn-lg btn-dark" texttype="submit" name="cadastrar">Cadastrar</button></a><hr/>
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>Cpf</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Comandos</th>
            </tr>
            </thead>
            <%for(Pessoa p : DbPessoa.getPessoas()){%>
            <%int i = DbPessoa.getPessoas().indexOf(p);%>
            <tbody></tbody>
           <tr>
                <td><%=i%></td>
                <td><%=p.getNome()%></td>
                <td><%=p.getCpf()%></td>
                <td><%=p.getEmail()%></td>
                <td><%=p.getTelefone()%></td>
                <td>
                    <a href="alterarPessoa.jsp?i=<%=i%>"><button class="btn btn-lg btn-dark" texttype="submit" name="alterar">Alterar</button></a>
                    <a href="excluirPessoa.jsp?i=<%=i%>"><button class="btn btn-lg btn-dark" texttype="submit" name="excluir">Excluir</button></a>
                </td>
            </tr>
            <%}%>
            </tbody>
        </table>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
    
</html>
