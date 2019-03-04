<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
           prefix="sf" %>

<layout:templateLogin>
        <jsp:attribute name="scriptsEspecificos">
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"/>" type="text/javascript" ></script>
            <script src="<c:url value="/static/js/usuario/senha.js"/>" type="text/javascript" ></script>
    </jsp:attribute>

    <jsp:body>
        <h1 style="text-align: center" class="col-md-12">Alteração de senha</h1>
        </br>
        <form id="frm" class="container-fluid" action="/usuario/" method="post" >
            <label hidden class="label col-md-1">Código:
                <input hidden type="number" id="id" name="id" class="col-md-1"
                    value="${usuario.id}" readonly/>
            </label>

            <label class="float-left label col-md-12" for="passwordAtual">Senha Atual:
                <input type="password" id="passwordAtual" name="passwordAtual" class="col-md-12"
                   required value="${usuario.password}"/>
            </label>

            <label class="float-left label col-md-12" for="passwordNova">Senha Nova:
                <input type="password" id="passwordNova" name="passwordNova" class="col-md-12"
                   required value="${usuario.password}"/>
            </label>

            <label class="float-left label col-md-12" for="passwordNovaConfirm">Confirmação Senha Nova:
                <input type="password" id="passwordNovaConfirm" name="passwordNovaConfirm" class="col-md-12"
                   required value="${usuario.password}"/>
            </label>

            
            <button class="btn loginButton" type="submit">Confirmar</button>
            <button class="btn loginClear" type="reset">Limpar</button>
        </form>

    </jsp:body>
</layout:templateLogin>