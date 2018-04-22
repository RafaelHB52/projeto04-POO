<%-- 
    Document   : fornecedor
    Created on : 22/04/2018, 10:34:27
    Author     : JoãoPaulo
--%>

<%@page import="br.com.fatecpg.dados.Fornecedor"%>
<%@page import="br.com.fatecpg.dados.Bd"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
     <%
    /* Adicionar */
    if(request.getParameter("add") != null){
        Fornecedor f = new Fornecedor();
        f.setNome(request.getParameter("nome"));
        f.setRazao(request.getParameter("razao"));
        f.setCnpj(request.getParameter("cnpj"));
        f.setEmail(request.getParameter("email"));
        f.setTel(request.getParameter("telefone"));
        f.setEnd(request.getParameter("endereco"));
        Bd.getFornecedor().add(f);
        response.sendRedirect(request.getRequestURI());
    }
    /* Remover */
    else if(request.getParameter("del") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getFornecedor().remove(i);
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
        <!--Entrada de dados -->
              <div class="container-fluid cor-1 text-center">
                <h3 class="margin">Cadastrar Fornecedor</h3><hr/>
                <form>
                    Nome:<br/><input type="text" name="nome" style="color: black"/><br/>
                    Razão:<br/><input type="text" name="razao" style="color: black"/><br/>
                    CNPJ:<br/><input type="text" name="cnpj" style="color: black"/><br/>
                    E-Mail:<br/><input type="text" name="email" style="color: black"/><br/>
                    Telefone:<br/><input type="text" name="telefone" style="color: black"/><br/>
                    Endereço:<br/><input type="text" name="endereco" style="color: black"/><br/>
                    <br/><input type="submit" name="add" value="Cadastrar" style="color: black" class="btn btn-default btn-lg"/><br/>
                </form><hr/>
        </div>
        
          <div class="container-fluid cor-2 text-center">
            <h3 class="margin" style="font-weight: bold">Lista de Cadastros</h3>
            <center><table class="table-condensed table-hover table-responsive" border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>Razão</th>
                <th>CNPJ</th>
                <th>E-Mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Exclusão</th>
            </tr>
            
            <%for(int i = 0; i < Bd.getFornecedor().size(); i++){%>
            <tr>
                <td><%= i %></td>
                <td><%= Bd.getFornecedor().get(i).getNome() %></td>
                <td><%= Bd.getFornecedor().get(i).getRazao()%></td>
                <td><%= Bd.getFornecedor().get(i).getCnpj()%></td>
                <td><%= Bd.getFornecedor().get(i).getEmail()%></td>
                <td><%= Bd.getFornecedor().get(i).getTel()%></td>
                 <td><%= Bd.getFornecedor().get(i).getEnd()%></td>
                <td>
                      <form>
                        <input type="hidden" name="i" value="<%=i%>" />
                        <center><input type="submit" name="del" value="Excluir" class="btn btn-default btn-lg"/></center>
                    </form>    
                </td>
            </tr>
            <%}%>
            </table></center>
            <br/><center><a href="altfornecedor.jsp" role="button" class="btn btn-default btn-lg">Alterar</a></center>
             </div>
            <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
