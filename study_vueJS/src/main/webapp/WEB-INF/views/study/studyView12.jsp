<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>vue 컴포넌트</title>
	</head>
	
	<body>
		<div id="app">
			{{ name }} <br>
			<button @click="changeText">Click</button>
		</div>
		
		<div id="app-1">
			{{ name }} <br>
			<button @click="changeText">Click</button>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				name : 'aaaa'
			},
			methods : {
				changeText : function() {
					this.name = 'aaaa updated';
				}
			}
		});
		
		var app1 = new Vue({
			el: '#app-1', 
			data: {
				name : 'bbbb'
			},
			methods : {
				changeText : function() {
					this.name = 'bbbb updated';
				}
			}
		});
	</script>
</html>
