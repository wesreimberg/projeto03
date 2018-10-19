

<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.DbVeiculo"%>
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
        <h1>Veiculo</h1>
        <h2>Excluir</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Veiculo v = DbVeiculo.getVeiculo().get(i);
            if(request.getParameter("excluir") != null){
                DbVeiculo.getVeiculo().remove(i);
                response.sendRedirect("listaVeiculo.jsp");
            }
        %>
        <form>
            Índice: <br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Placa: <br/>
            <b><%=v.getPlaca()%></b>
            <br/>
            Marca: <br/>
            <b><%=v.getMarca()%></b>
            <br/>
            Modelo: <br/>
            <b><%=v.getModelo()%></b>
            <br/>
           Cor: <br/>
            <b><%=v.getCor()%></b>
            <br/>
            <br/><input type="submit" name="excluir" value="Confirmar exclusão"/>
        </form>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
