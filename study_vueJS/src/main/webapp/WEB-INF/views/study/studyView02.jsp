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
			이름 : {{ person.name }} <br>
			나이 : {{ person.age }} <br>
			
			{{ nextYear('안녕하세요') }}
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				person : {
					name : "홍길동", 
					age : 28
				}
			},
			methods : {
				nextYear : function(greeting) {
					return greeting + "! " + this.person.name + "님은 내년에 " + (this.person.age + 1) + "살 입니다.";
				}
			},
			otherMethod : function() {
				this.nextYear();
			}
		});
	</script>
</html>
