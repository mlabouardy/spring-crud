<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<a href="<spring:url value="/"/>" class="btn btn-info">Précédent</a>
<br/><br/>
<div class="panel panel-primary">
		<div class="panel-heading">Modification d'un atelier</div>
		<div class="panel-body">
			<form:form commandName="workshop">
				<div class="form-group">
					<label for="name">Nom:</label> 
					<form:input path="name" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<label for="subject">Matiere:</label> 
					<form:input path="subject" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<label for="description">Description:</label> 
					<form:input path="description" cssClass="form-control"/>
				</div>
				<div class="form-group">
					<label for="animator">Animateur:</label> 
					<form:input path="animator" cssClass="form-control"/>
				</div>
				<button type="submit" class="btn btn-default">Modifier</button>
			</form:form>
		</div>
</div>
