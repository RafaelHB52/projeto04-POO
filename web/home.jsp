<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.dados.Cliente"%>
<%@page import="br.com.fatecpg.dados.Bd"%>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <title>Controller</title>
        <meta charset="utf-8">
        <%@include file="WEB-INF/jspf/cabecalho.jspf"%>
    </head>
    
    <body>
        <%@include file="WEB-INF/jspf/navbar.jspf"%>
        
        <!-- CONTAINER SOBRE -->
        <div class="container-fluid cor-1 text-center">
            <h3 class="margin">O que é o Controller?</h3>
            <h3>É uma aplicação desenvolvida para tornar o seu trabalho mais fácil e prático, basta entrar com os dados requeridos no cadastro que o Controller guarda os seus dados com eficiência e segurança. </h3><br/>
            <span class="glyphicon glyphicon-signal" style="font-size: 150px"></span></p>
        </div>
        <!-- FIM CONTAINER -->
        
        <!-- CONTAINER DESENVOLVEDOR -->
        <div class="container-fluid cor-2 text-center">    
            <h3 class="margin">Desenvolvido por:</h3><br>
            <div class="row">
                <div class="container">
                    <div class="col-sm-4">
                        <p style="font-weight: bold">João Paulo</p>
                        <p>Estudante de Análise e Desenvolvimento de Sistemas na FATEC-PG</p>
                        <center><img src="imagens/noimage.png" class="img-responsive img-circle margin imagem"></center>
                        <center><a href="https://github.com/10joaopaulo" style="color:#1abc9c">GitHub</a></center>
                    </div> 

                    <div class="col-sm-4">   
                    </div>

                    <div class="col-sm-4"> 
                        <p style="font-weight: bold">Rafael Barbosa</p>
                        <p>Estudante de Análise e Desenvolvimento de Sistemas na FATEC-PG</p>
                        <center><img src="imagens/rafael.png" class="img-responsive img-circle margin imagem"></center>
                        <center><a href="https://github.com/RafaelHB52" style="color:#1abc9c">GitHub</a></center>
                    </div>
                </div>
            </div>
        </div>
        <!-- FIM CONTAINER -->
        
        <%@include file="WEB-INF/jspf/rodape.jspf"%>
    </body>
</html>
