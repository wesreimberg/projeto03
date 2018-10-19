

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.web.Veiculo"%>
<%@page import="br.com.fatecpg.web.DbVeiculo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf" %>
        <title>Veiculo</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/menu.jspf" %>
          <h2>Cadastrar</h2>
        <%
            if(request.getParameter("inserir") != null){
                String placa = request.getParameter("placa");
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String cor= request.getParameter("cor");
                Veiculo v = new Veiculo();
                v.setDadosVeiculo(placa, marca, modelo, cor);
                DbVeiculo.getVeiculo().add(v);
                response.sendRedirect("listaVeiculo.jsp");
            }
        %>
        <form>
           Placa: <br/>
            <input type="text" name="placa"/><br/>
            Marca:<br/>
            <input type="text" name="marca"/><br/>
            Modelo: <br/>
            <input type="text" name="modelo"/><br/>            
            Cor: <br/>
            <input type="text" name="cor"/><br/>
            <input type="submit" name="inserir" value="Inserir"/>
        </form>
        <%@include file="WEB-INF/jspf/rodape.jspf" %>
    </body>
</html>
