<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel="stylesheet" type="text/css" href="../css/main.css" />

<title>Product</title>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
var contextPath = "${pageContext.request.contextPath}";
$(document).ready(function() {
	$('input[name="FostercareCommissionid"]').blur(function() {
		$.ajax({
			method: "GET",
			url: contextPath+"/pages/fostercarecommission.view",
			data: "id="+$('input[name="FostercareCommissionid"]').val(),
			dataType: "json",
			cache: false,
			async: true,
			success: function(json) {
				$(".error").first().append(json[0].text);
				if(json[0].hasMoreData) {
					$("input[name='FostercareCommissionid']").val(json[1].FostercareCommissionid);
					$("input[name='owner']").val(json[1].owner);
					$("input[name='txt']").val(json[1].txt);
					$("input[name='petid']").val(json[1].petid);
					$("input[name='region']").val(json[1].region);
					$("input[name='dday']").val(json[1].dday);
					$("input[name='size']").val(json[1].size);
					$("input[name='Variety']").val(json[1].Variety);
				}
			}
		});
	});
	$("input[name='FostercareCommissionid']").focus(function() {
		clearForm();
		$(".error").first().html("");
	});
});
function clearForm() {
	var inputs = document.getElementsByTagName("input");
	for(var i=0; i<inputs.length; i++) {
		if(inputs[i].type=="text") {
			inputs[i].value="";
		}
	}
}
</script>
</head>
<body>

<h3>Welcome </h3>

<h3>fostercarecommmission Table</h3>

<form action="<c:url value="/pages/fostercarecommmission.controller" />" method="post">
<table>
	<tr>
		<td>FostercareCommissionid : </td>
		<td><input type="text" name="FostercareCommissionid" value="${param.FostercareCommissionid}"></td>
		<td><span class="error">${errors.FostercareCommissionid}</span></td>
	</tr>
	<tr>
		<td>owner : </td>
		<td><input type="text" name="owner" value="${param.owner}"></td>
		<td></td>
	</tr>
	<tr>
		<td>txt : </td>
		<td><input type="text" name="txt" value="${param.txt}"></td>
		<td><span class="error">${errors.txt}</span></td>
	</tr>
	<tr>
		<td>petid : </td>
		<td><input type="text" name="petid" value="${param.petid}"></td>
		<td><span class="error">${errors.petid}</span></td>
	</tr>
	<tr>
		<td>region : </td>
		<td><input type="text" name="region" value="${param.region}"></td>
		<td><span class="error">${errors.region}</span></td>
	</tr>
	<tr>
		<td>dday : </td>
		<td><input type="text" name="dday" value="${param.dday}"></td>
		<td><span class="error">${errors.dday}</span></td>
	</tr>
	<tr>
		<td>size : </td>
		<td><input type="text" name="size" value="${param.size}"></td>
		<td><span class="error">${errors.size}</span></td>
	</tr>
	<tr>
		<td>Variety : </td>
		<td><input type="text" name="Variety" value="${param.Variety}"></td>
		<td><span class="error">${errors.Variety}</span></td>
	</tr>
	<tr>
		<td>
			<input type="submit" name="fostercare" value="Insert">
			<input type="submit" name="fostercare" value="Update">
		</td>
		<td>
			<input type="submit" name="fostercare" value="Delete">
			<input type="submit" name="fostercare" value="Select">
			<input type="button" value="Clear" onclick="clearForm()">
		</td>
	</tr>
</table>

</form>

<h3><span class="error">${errors.action}</span></h3>

<c:if test="${not empty delete}">
	<c:if test="${delete}">
		<h3>Delete product table success : 1 row deleted</h3>
	</c:if>
	<c:if test="${not delete}">
		<h3>Delete product table success : 0 row deleted</h3>
	</c:if>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty insert}">
	<h3>Insert product table success</h3>
	<table border="1">
		<tr><td>FostercareCommissionid</td><td>${insert.FostercareCommissionid}</td></tr>
		<tr><td>owner</td><td>${insert.owner}</td></tr>
		<tr><td>txt</td><td>${insert.txt}</td></tr>
		<tr><td>petid</td><td>${insert.petid}</td></tr>
		<tr><td>region</td><td>${insert.region}</td></tr>
		<tr><td>dday</td><td>${insert.dday}</td></tr>
		<tr><td>size</td><td>${insert.size}</td></tr>
		<tr><td>Variety</td><td>${insert.Variety}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

<c:if test="${not empty update}">
	<h3>Update product table success</h3>
	<table border="1">
		<tr><td>FostercareCommissionid</td><td>${update.FostercareCommissionid}</td></tr>
		<tr><td>owner</td><td>${update.owner}</td></tr>
		<tr><td>txt</td><td>${update.txt}</td></tr>
		<tr><td>petid</td><td>${update.petid}</td></tr>
		<tr><td>region</td><td>${update.region}</td></tr>
		<tr><td>dday</td><td>${update.dday}</td></tr>
		<tr><td>size</td><td>${update.size}</td></tr>
		<tr><td>Variety</td><td>${update.Variety}</td></tr>
	</table>
	<script type="text/javascript">clearForm()</script>
</c:if>

</body>
</html>