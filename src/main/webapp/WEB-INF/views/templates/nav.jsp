<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top"
	id="mainNav">
	<a class="navbar-brand" href="index.html">Management</a>
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarResponsive"
		aria-controls="navbarResponsive" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="collapse navbar-collapse" id="navbarResponsive">
		<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Dashboard"><a class="nav-link" href="index.html"> <i
					class="fa fa-fw fa-dashboard"></i> <span class="nav-link-text">Dashboard</span>
			</a></li>
			
			<li class="nav-item" data-toggle="tooltip" data-placement="right"
				title="Components">
				<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
					href="#collapseComponents" data-parent="#exampleAccordion">
				<i class="fa fa-fw fa-table"></i> <span class="nav-link-text">Employee Management</span>
				</a>
				<ul class="sidenav-second-level collapse ${employeeMngShow}" id="collapseComponents">
					<spring:url value="/admin/emp/list"  var="urlEmpList" />
					<li><a href="${urlEmpList}">List</a></li>
					<spring:url value="/admin/emp/createform"  var="urlEmpCreate" />
					<li class=*${createEmployeeActive}*><a href="${urlEmpCreate}">Create</a></li>
				</ul></li>
			
		</ul>

		<ul class="navbar-nav sidenav-toggler">
			<li class="nav-item"><a class="nav-link text-center"
				id="sidenavToggler"> <i class="fa fa-fw fa-angle-left"></i>
			</a></li>
		</ul>

		<ul class="navbar-nav ml-auto">
			
			<li class="nav-item"><a class="nav-link" data-toggle="modal"
				data-target="#exampleModal"> <i class="fa fa-fw fa-sign-out"></i>Logout
			</a></li>
		</ul>
	</div>
</nav>
