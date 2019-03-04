<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<layout:template>
    <jsp:body>
        <form id="frm" class="container-fluid" action="/login/" method="post">
            <div class="row">
                <div class="label-float col-md-12">
                    <input required type="text" id="username" name="username" placeholder=" "
                           value="${usuario.username}"/>
                    <label for="username">Nome de usuário: </label>
                </div>
                <br/>
                <div class="label-float col-md-12">
                    <input required type="password" id="password" name="password" placeholder=" "
                           value="${usuario.password}"/>
                    <label for="password">Senha: </label>
                </div>
                <br/>
                <div align="center" class="col-md-12" style="padding: 4%">
                    <button class="loginButton" type="submit">Entrar</button>
                </div>
            </div>
        </form>
    </jsp:body>
</layout:template>