<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<div class="row">
	<div class="row-option-left">
		<a href="<spring:url value="/add.html"/>" class="btn btn-success">Ajouter un atelier</a>
	</div>
</div>
<br />
<div class="row">
	<div class="panel panel-primary">
		<div class="panel-heading">Liste des ateliers</div>
		<div class="panel-body">
			<table class="table table-hover table-bordered">
				<thead>
					<th>Nom</th>
					<th>Matiere</th>
					<th>Animateur</th>
					<th>Description</th>
					<th>Options</th>
				</thead>
				<tbody>
					<c:forEach items="${workshops}" var="workshop">
						<tr>
							<td>${workshop.name}</td>
							<td>${workshop.subject}</td>
							<td>${workshop.animator}</td>
							<td>${workshop.description}</td>
							<td>
								<a href="<spring:url value="/workshop/update/${workshop.id}.html"/>" class="btn btn-info">Modifier</a>
								<a href="<spring:url value="/workshop/delete/${workshop.id}.html"/>" class="btn btn-danger">Supprimer</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>