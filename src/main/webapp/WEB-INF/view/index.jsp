<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/layout" prefix="layout" %>
<layout:template>
	<jsp:attribute name="scriptsEspecificos">
  <!-- Page level plugins -->
  <script src="static/vendor/chart.js/Chart.min.js"></script>

  <!-- Page level custom scripts -->
  <script src="<c:url value="static/js/demo/chart-area-demo.js"/>"></script>
  <script src="<c:url value="static/js/demo/chart-pie-demo.js"/>"></script>
    </jsp:attribute>
    
    <jsp:body>
	    <!-- Content Container -->
	    <div class=" container col-md-7">
		  <div class="p-0 shadow animated--grow-in" aria-labelledby="searchDropdown">
            <form class="form mr-auto w-100 navbar-search">
              <div class="input-group">
                <input type="text" class="form-control bg-light border-0 small" placeholder="Buscar por..." aria-label="Search" aria-describedby="basic-addon2">
                <div class="input-group-append">
                  <button class="btn btn-primary" type="button">
                    <i class="fas fa-search fa-sm"></i>
                  </button>
                </div>
              </div>
            </form>
          </div>
	    </div>
    </jsp:body>
</layout:template>