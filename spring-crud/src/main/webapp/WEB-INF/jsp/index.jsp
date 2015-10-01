<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<div class="row">
	<div class="row-option-left">
		<button type="button" class="btn btn-success"><a href="<spring:url value="/add.html"/>">Ajouter un atelier</a></button>
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
					<th colspan="2" style="text-align:center">Options</th>
				</thead>
				<tbody>
					<c:forEach items="${workshops}" var="workshop">
						<tr>
							<td>${workshop.name}</td>
							<td>${workshop.subject}</td>
							<td>${workshop.animator}</td>
							<td>${workshop.description}</td>
							<td style="text-align:center"><button type="button" class="btn btn-info">Modifier</button></td>
							<td style="text-align:center"><button type="button" class="btn btn-danger">Supprimer</button></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>