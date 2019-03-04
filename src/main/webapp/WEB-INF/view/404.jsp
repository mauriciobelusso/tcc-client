<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<layout:template>
    <jsp:body>
        <!-- 404 Error Text -->
        <div class="text-center">
          <div class="error mx-auto" data-text="404">404</div>
          <p class="lead text-gray-800 mb-5">Page Not Found</p>
          <p class="text-gray-500 mb-0">Parece que você encontrou uma falha na matrix...</p>
          <a href="index.html">&larr; Voltar para o Dashboard</a>
        </div>
    </jsp:body>
</layout:template>
