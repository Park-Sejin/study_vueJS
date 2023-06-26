<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	
	<title>Home</title>
</head>
	<body>
		<div id="app">
			{{ message }}
		</div>
		
		<script type="text/javascript">
			var app = new Vue({
				el: '#app', data: {
					message: '안녕하세요 Vue!'
				}
			});
		</script>
	</body>
</html>
