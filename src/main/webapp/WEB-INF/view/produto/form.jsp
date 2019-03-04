<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<%@ taglib uri="http://www.springframework.org/tags/form"
           prefix="sf" %>

<layout:template>
        <jsp:attribute name="scriptsEspecificos">
            <script src="<c:url value="/static/js/produto/form.js?0.1"/>" type="text/javascript"></script>
    </jsp:attribute>

    <jsp:body>
        <h1 style="text-align: center" class="col-md-12">Cadastro de produtos</h1>
        <form id="frm" class="container-fluid" action="/produto/" method="post">
            <div class="row">
                <label hidden class="label col-md-1">Código: </label>
                <input hidden type="number" id="id" name="id"
                       value="${produto.id}" readonly/>

                <div class="label-float col-md-12">
                    <input type="text" id="nome" name="nome" placeholder=" "
                           required value="${produto.nome}"/>
                    <label for="nome" class="label ">Nome</label>
                </div>

                <div class="label-float col-md-12">
                    <input type="text" id="descricao" name="descricao" class="col-md-12" placeholder=" "
                           required value="${produto.descricao}"/>
                    <label class="label" for="descricao">Descrição</label>
                </div>
                <div class="label-float col-md-3">
                    <input type="number" id="valor" name="valor" min="0" step="0.01" placeholder=" " class="col-md-12"
                           required value="${produto.valor}"/>
                    <label class="label" for="valor">Valor</label>
                </div>
                <div class="label-float col-md-3">
                    <input type="number" id="valorPromocional" name="valorPromocional" min="0"
                           step="0.01" placeholder=" "
                           value="${produto.valorPromocional}"/>
                    <label for="valorPromocional">Valor Promocional</label>
                </div>
                <div class="label-float col-md-3">
                    <input type="date" id="dataPromo" name="dataPromo" class="col-md-12" min="2018-01-01"
                           max="2020-04-20" placeholder=" "
                           value="${produto.dataPromo}"/>
                    <label class="label" for="dataPromo">Data Inicio Promoção</label>
                </div>
                <div class="label-float col-md-3">
                    <input type="date" id="fimDataPromo" name="fimDataPromo" class="col-md-12"
                           placeholder=" " value="${produto.fimDataPromo}"/>
                    <label class="label" for="fimDataPromo">Data Final Promoção</label>
                </div>
                <div class="label-float col-md-8">
                    <input type="number" id="codigoApontamento" name="codigoApontamento" class="col-md-12" min="0"
                           required placeholder=" " value="${produto.codigoApontamento}"/>
                    <label class="label" for="codigoApontamento">Código de Barras</label>
                </div>
                <div class="check-radio col-md-4">
                    <label style="padding-top: 6px;color: #3951b2;margin-bottom: 0px" class="label"> Ativo</label>
                        <input class="col-md-6" type="checkbox"
                               value="${produto.ativo}" ${produto.ativo=='true' ? 'checked' : ''}
                               placeholder=" "
                               id="ativo" name="ativo" onclick="$(this).val(this.checked ? 1 : 0)"/>

                </div>
                <div style="padding-top: 13px" class="col-md-12">
                    <label style="color: #3951b2;margin-bottom: 0px" class="label"
                           for="categorias">Categoria</label>
                    <select id="categorias" class="col-md-12 material-select" style="height: 46px">
                        <c:forEach var="categoria" items="${categorias}">
                            <option id="categoria" value="${categoria.id}">${categoria.descricao}</option>
                        </c:forEach>
                    </select>
                </div>

                <input hidden type="number" id="mercado" name="mercado"/>
                <div class="col-md-12" style="margin-top: 12px">
                    <button class="btn btn-primary" type="submit">Salvar</button>
                    <button class="btn btn-primary" type="reset">Limpar</button>
                </div>
            </div>
        </form>

    </jsp:body>
</layout:template>