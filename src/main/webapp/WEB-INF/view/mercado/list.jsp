<%@ page contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<fmt:setLocale value="pt_BR"/>
<layout:template>
	<jsp:attribute name="scriptsEspecificos">
            <script src="<c:url value="/static/js/mercado/list.js"/>" type="text/javascript"></script>
    </jsp:attribute>
    <jsp:body>
		<div class="col-12">
			<h2 class="col-12">Listagem de Mercados</h2>
			<button style="padding: 1%;margin-bottom: 18px" class="btn btn-primary col-md-2 offset-lg-10 col-sm-12" onclick="window.location.href='/mercado/novo'">Inserir Novo Mercado</button>
		</div>
        <table id="tabela" class="table table-striped table-bordered" width="100%">
			<thead class="col-12">
				<tr>
					<th>Cód.</th>
					<th>Razão Social</th>
					<th>Fantasia</th>
					<th>CNPJ</th>
					<th>Cidade</th>
					<th>Estabelecimento</th>
					<th>Mercado Matriz</th>					
					<th>Ações</th>
				</tr>
			</thead>
			<tbody >
	
			</tbody>
		</table>
    </jsp:body>
</layout:template>