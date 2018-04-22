<%-- 
    Document   : altfornecedor
    Created on : 22/04/2018, 12:06:44
    Author     : JoãoPaulo
--%>

<%@page import="br.com.fatecpg.dados.Fornecedor"%>
<%@page import="br.com.fatecpg.dados.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
    /* Alterar */
    if(request.getParameter("edit") != null){
        int indice = Integer.parseInt(request.getParameter("indice"));
        Bd.getFornecedor().remove(indice);
      
        Fornecedor altFornecedor = new Fornecedor();
        altFornecedor.setNome(request.getParameter("nome_edit"));
        altFornecedor.setRazao(request.getParameter("razao_edit"));
        altFornecedor.setCnpj(request.getParameter("cnpj_edit"));
        altFornecedor.setEmail(request.getParameter("email_edit"));
        altFornecedor.setTel(request.getParameter("telefone_edit"));
        altFornecedor.setEnd(request.getParameter("endereco_edit"));
        Bd.getFornecedor().add(indice, altFornecedor);

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
          <div class="container-fluid cor-1">
            <a href="fornecedor.jsp" role="button" class="btn btn-default btn-lg">Voltar</a>
            
            <!-- Início da Entrada de Dados -->
            <center><h3 class="margin">Alterar Fornecedor</h3><hr/>
            <form>
                Índice:<br/><input type="text" name="indice" style="color: black"/><br/>
                Nome:<br/><input type="text" name="nome_edit" style="color: black"/><br/>
                Razão:<br/><input type="text" name="razao_edit" style="color: black"/><br/>
                CNPJ:<br/><input type="text" name="cnpj_edit" style="color: black"/><br/>
                E-Mail:<br/><input type="text" name="email_edit" style="color: black"/><br/>
                Telefone:<br/><input type="text" name="telefone_edit" style="color: black"/><br/>
                Endereço:<br/><input type="text" name="endereco_edit" style="color: black"/><br/>
                <br/><input type="submit" name="edit" value="Alterar" style="color: black" class="btn btn-default btn-lg"/><br/>
            </form><hr/></center>
            <!-- Fim da Entrada de Dados -->
        </div>

    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
