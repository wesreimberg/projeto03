
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.DbVeiculo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Veiculos</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        <h1>Cadastro</h1>
        <h2>Veiculos</h2>
        <a href="cadastraVeiculo.jsp"><button class="btn btn-lg btn-dark" texttype="submit" name="cadastrar">Cadastrar</button></a><hr/>
        <table class="table">
            <thead>
            <tr>
                <th>ID</th>
                <th>Placa</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Cor</th>
                <th>Comandos</th>
            </tr>
            </thead>
            <%for(Veiculo v : DbVeiculo.getVeiculo()){%>
            <%int i = DbVeiculo.getVeiculo().indexOf(v);%>
            <tbody>
            <tr>
                <td><%=i%></td>
                <td><%=v.getPlaca()%></td>
                <td><%=v.getMarca()%></td>
                <td><%=v.getModelo()%></td>
                <td><%=v.getCor()%></td>
                <td>
                    <a href="alterarVeiculo.jsp?i=<%=i%>"><button class="btn btn-lg btn-dark" texttype="submit" name="alterar">Alterar</button></a>
                    <a href="excluirVeiculo.jsp?i=<%=i%>"><button class="btn btn-lg btn-dark" texttype="submit" name="excluir">Excluir</button></a>
                </td>
            </tr>
            <%}%>
            </tbody>
        </table>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
    
</html>
