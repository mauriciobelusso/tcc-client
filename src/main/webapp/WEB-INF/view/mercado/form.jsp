<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="sf"%>

<layout:template>
	<jsp:attribute name="scriptsEspecificos">
            <script
			src="<c:url value="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.0/jquery.mask.js"/>"
			type="text/javascript"></script>
            <script src="<c:url value="/static/js/mercado/form.js"/>"
			type="text/javascript"></script>
    </jsp:attribute>

	<jsp:body>
        <h1 style="text-align: center" class="col-md-12">Cadastro de Mercados</h1>
        <form id="frm" class="container-fluid" action="/mercado/" method="post">
            <div class="row">
                <label hidden class="label col-md-1">Código:  </label>
                <input hidden type="number" id="id" name="id" placeholder=" "
                    class="col-md-1" value="${mercado.id}" readonly />

                <div class="label-float col-md-12">
                    <input type="text" id="razaoSocial" name="razaoSocial" placeholder=" "
                           class="col-md-12" required value="${mercado.razaoSocial}" />
                    <label for="razaoSocial" class="label">Razão Social</label>
                </div>

                <div class="label-float col-md-12">
                    <input type="text" id="fantasia" name="fantasia" placeholder=" "
                           class="col-md-12" required value="${mercado.fantasia}" />
                    <label class="label" for="fantasia">Fantasia</label>
                </div>

                <div class="label-float col-md-12">
                    <input type="text" id="cnpj" name="cnpj" placeholder=" "
                           class="col-md-12" min="0" minlength="18-" maxlength="18" required
                           value="${mercado.CNPJ}" />
                    <label class="label" for="cnpj">CNPJ</label>
                </div>

                <div class="check-radio col-md-1">
                <label for="matriz" style="color: #3951b2;padding-top:15px;margin-bottom: 5px" class="label"> Matriz</label>
                    <input class="col-md-12" type="checkbox" value="${mercado.matriz}"
                    ${mercado.matriz=='true' ? 'checked' : ''} id="matriz" name="matriz"
                    onclick="$(this).val(this.checked ? 1 : 0)" />
                </div>

                <div class="col-md-11" style="padding-top: 13px">
                    <label class="label" style="color: #3951b2" for="mercados">Mercado Matriz
                        <select id="mercados" class="custom-select"
                        style="padding: 5px; height: 46px">
                            <c:forEach var="mercadoMatriz" items="${mercados}">
                                <option id="mercadoMatriz"
                                    value="${mercadoMatriz.id}">${mercadoMatriz.razaoSocial}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>

                <div class="col-md-12">
                    <label class="label" style="color: #3951b2" for="cidades">Cidade
                        <select id="cidades" class="custom-select col-md-12"
                        style="padding: 5px; height: 46px">
                            <c:forEach var="cidade" items="${cidades}">
                                <option id="cidade" value="${cidade.id}">${cidade.nome}</option>
                            </c:forEach>
                        </select>
                    </label>
                </div>

                <div class="col-md-12">
                    <button class="btn btn-primary" type="submit">Salvar</button>
                    <button class="btn btn-primary" type="reset">Limpar</button>
                </div>
            </div>
        </form>

    </jsp:body>
</layout:template>