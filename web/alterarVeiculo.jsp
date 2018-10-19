

<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.DbVeiculo"%>
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
        <h1>Veiculo</h1>
        <h2>Alterar</h2>
        <%
            int i = Integer.parseInt(request.getParameter("i"));
            Veiculo v = DbVeiculo.getVeiculo().get(i);
            if(request.getParameter("alterar") != null){
                String placa = request.getParameter("placa");
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor= request.getParameter("cor");
                v.setDadosVeiculo(placa, marca, modelo, cor);
                DbVeiculo.getVeiculo().set(i, v);
                response.sendRedirect("listaVeiculo.jsp");
            }
        %>
        <form>
            Índice:<br/>
            <b><%=i%></b><br/>
            <input type="hidden" name="i" value="<%=i%>"/>
            Placa: <br/>
            <input type="text" name="placa" value="<%=v.getPlaca()%>"/>
            <br/>
            Marca: <br/>
            <input type="text" name="marca" value="<%=v.getMarca()%>"/>
            <br/>
            Modelo: <br/>
            <input type="text" name="modelo" value="<%=v.getModelo()%>"/>
            <br/>
            Cor: <br/>
            <input type="text" name="cor" value="<%=v.getCor()%>"/>
            <br/>
           
            <br/><input type="submit" name="alterar" value="Alterar"/>
        </form>
            <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
