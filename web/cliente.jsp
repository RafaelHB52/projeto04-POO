<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.dados.Cliente"%>
<%@page import="br.com.fatecpg.dados.Bd"%>
<!DOCTYPE html>
<html>
 <%
    if(request.getParameter("add") != null){
        Cliente c = new Cliente();
        c.setNome(request.getParameter("nome"));
        c.setCpf(request.getParameter("cpf"));
        c.setRg(request.getParameter("rg"));
        c.setEmail(request.getParameter("email"));
        c.setTelefone(request.getParameter("telefone"));
        c.setEndereco(request.getParameter("endereco"));
        Bd.getCliente().add(c);
        response.sendRedirect(request.getRequestURI());
    } else if(request.getParameter("del") != null){
        int i = Integer.parseInt(request.getParameter("i"));
        Bd.getCliente().remove(i);
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
                <h3 class="margin">Cadastrar Cliente</h3><hr/>
                <form>
                    Nome:<br/><input type="text" name="nome" style="color: black"/><br/>
                    CPF:<br/><input type="text" name="cpf" style="color: black"/><br/>
                    RG:<br/><input type="text" name="rg" style="color: black"/><br/>
                    E-Mail:<br/><input type="text" name="email" style="color: black"/><br/>
                    Telefone:<br/><input type="text" name="telefone" style="color: black"/><br/>
                    Endereço:<br/><input type="text" name="endereco" style="color: black"/><br/>
                    <br/><input type="submit" name="add" value="Cadastrar" style="color: black"/><br/>
                </form><hr/>
        </div>
        
        <div class="container-fluid cor-2 text-center">
            <h3 class="margin" style="font-weight: bold">Lista de Cadastros</h3>
            <center><table class="table-condensed table-hover table-responsive" border="1">
            <tr>
                <th>Índice</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>RG</th>
                <th>E-Mail</th>
                <th>Telefone</th>
                <th>Endereço</th>
                <th>Exclusão</th>
            </tr>
            
            <%for(int i = 0; i < Bd.getCliente().size(); i++){%>
            <tr>
                <td><%= i %></td>
                <td><%= Bd.getCliente().get(i).getNome() %></td>
                <td><%= Bd.getCliente().get(i).getCpf() %></td>
                <td><%= Bd.getCliente().get(i).getRg() %></td>
                <td><%= Bd.getCliente().get(i).getEmail() %></td>
                <td><%= Bd.getCliente().get(i).getTelefone() %></td>
                <td><%= Bd.getCliente().get(i).getEndereco() %></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%=i%>" />
                        <center><input type="submit" name="del" value="Excluir" /></center>
                    </form>
                </td>
            </tr>
            <%}%>
            </table></center>
        </div>
        
    <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
