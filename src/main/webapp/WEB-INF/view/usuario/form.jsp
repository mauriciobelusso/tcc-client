<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
           prefix="sf" %>

<layout:template>
        <jsp:attribute name="scriptsEspecificos">
            <script src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"/>" type="text/javascript" ></script>
            <script src="<c:url value="/static/js/usuario/form.js"/>" type="text/javascript" ></script>
    </jsp:attribute>

    <jsp:body>
        <h1 style="text-align: center" class="col-md-12">Cadastro de usuários</h1>
        </br>
        <form id="frm" class="container-fluid" action="/usuario/" method="post" >
            <div class="row">
                <div class="label-float">
                    <input hidden type="number" id="id" name="id" class="col-md-1"
                           placeholder=" " value="${usuario.id}" readonly/>
                    <label hidden class="label">Código:</label>
                </div>

                <div class="label-float col-md-12">
                    <input type="text" id="nome" name="nome" class="col-md-12"
                           required value="${usuario.nome}"/>
                    <label for="nome" class="label" >Nome</label>
                </div>

                <div class="label-float col-md-12">
                    <input type="text" id="username" name="username" class="col-md-12"
                           placeholder=" " required value="${usuario.username}"/>
                    <label class="label" for="username">Nome de usuário</label>
                </div>

                <div class="label-float col-md-6">
                    <input type="password" id="password" name="password" class="col-md-12"
                           placeholder=" " required value="${usuario.password}"/>
                    <label class="label" for="password">Senha</label>
                </div>

                <div class="label-float col-md-6">
                    <input type="text" id="cpf" name="cpf" class="col-md-12" min="0" minlength="14" maxlength="14"
                           placeholder=" " required value="${usuario.cpf}"/>
                    <label class="label" for="cpf">CPF (apenas números)</label>
                </div>

                <div style="padding-top: 10px" class="col-md-12">
                    <label style="color: #3951b2;margin-bottom: 0px" class="label" for="mercados">Mercado
                        <select id="mercados" class="custom-select col-md-12" style="padding: 5px;height: 46px">
                            <c:forEach var="mercado" items="${mercados}">
                                <option id="mercado" value="${mercado.id}">${mercado.razaoSocial}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>
                <div class="col-md-12" style="padding-top: 15px;">
                    <button class="btn btn-primary" type="submit">Salvar</button>
                    <button class="btn btn-primary" type="reset">Limpar</button>
                </div>
            </div>
        </form>

    </jsp:body>
</layout:template>