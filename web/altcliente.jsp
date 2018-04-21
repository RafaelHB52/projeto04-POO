<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.dados.Cliente"%>
<%@page import="br.com.fatecpg.dados.Bd"%>
<!DOCTYPE html>
<html>
 <%
    if(request.getParameter("edit") != null){
        int indice = Integer.parseInt(request.getParameter("indice"));
        Bd.getCliente().remove(indice);
      
      
        Cliente altCliente = new Cliente();
        altCliente.setNome(request.getParameter("nome_edit"));
        altCliente.setCpf(request.getParameter("cpf_edit"));
        altCliente.setRg(request.getParameter("rg_edit"));
        altCliente.setEmail(request.getParameter("email_edit"));
        altCliente.setTelefone(request.getParameter("telefone_edit"));
        altCliente.setEndereco(request.getParameter("endereco_edit"));
        Bd.getCliente().add(indice, altCliente);

        response.sendRedirect(request.getRequestURI());
        
    }
%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Controller</title>
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <div class="container-fluid cor-1 text-center">
                <h3 class="margin">Alterar Cliente</h3><hr/>
                <form>
                    Índice:<br/><input type="text" name="indice" style="color: black"/><br/>
                    Nome:<br/><input type="text" name="nome_edit" style="color: black"/><br/>
                    CPF:<br/><input type="text" name="cpf_edit" style="color: black"/><br/>
                    RG:<br/><input type="text" name="rg_edit" style="color: black"/><br/>
                    E-Mail:<br/><input type="text" name="email_edit" style="color: black"/><br/>
                    Telefone:<br/><input type="text" name="telefone_edit" style="color: black"/><br/>
                    Endereço:<br/><input type="text" name="endereco_edit" style="color: black"/><br/>
                    <br/><input type="submit" name="edit" value="Alterar" style="color: black" class="btn btn-default btn-lg"/><br/>
                </form><hr/>
        </div>

    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
