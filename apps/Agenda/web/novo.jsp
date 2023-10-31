<%-- 
    Document   : novo
    Created on : Oct 31, 2023, 11:01:41 AM
    Author     : yagoaguiar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Agenda de contatos</title>
    <link rel="icon" href="imagens/phone.png">
    <link rel="stylesheet" href="style.css">
</head>
    <body>
        <main>
            <h1>Criar novo contato</h1>
            <form name="frmContato" action="">
                <table>
                    <tr>
                        <td>
                            <input type="text" name="nome" placeholder="Nome"
                             class="caixa1">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="fone" placeholder="Fone">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <input type="text" name="email" placeholder="Email"
                             class="caixa1">
                        </td>
                    </tr>
                </table>
                <input type="button" value="Adicionar" class="botao1">
            </form>
        </main>
    </body>
</html>
