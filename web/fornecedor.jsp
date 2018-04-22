<%-- 
    Document   : fornecedor
    Created on : 22/04/2018, 10:34:27
    Author     : JoãoPaulo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controller</title>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        <!--Entrada de dados -->
              <div class="container-fluid cor-1 text-center">
                <h3 class="margin">Cadastrar Fornecedor</h3><hr/>
                <form>
                    Nome:<br/><input type="text" name="nome" style="color: black"/><br/>
                    CPF:<br/><input type="text" name="cpf" style="color: black"/><br/>
                    RG:<br/><input type="text" name="rg" style="color: black"/><br/>
                    E-Mail:<br/><input type="text" name="email" style="color: black"/><br/>
                    Telefone:<br/><input type="text" name="telefone" style="color: black"/><br/>
                    Endereço:<br/><input type="text" name="endereco" style="color: black"/><br/>
                    <br/><input type="submit" name="add" value="Cadastrar" style="color: black" class="btn btn-default btn-lg"/><br/>
                </form><hr/>
        </div>
    </body>
</html>
