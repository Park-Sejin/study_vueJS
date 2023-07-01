<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>이벤트</title>
	</head>
	
	<body>
		<div id="app">
			{{ year }} <br>
			
			<!-- onclick 대신 v-on: -->
			<button v-on:click="plus">더하기</button>
			<button v-on:click="minus">빼기</button>
			
			<br><br>
			<form v-on:submit.prevent="submit">
				<input type="text"> <br>
				<button type="submit">submit</button>
			</form>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				year : 2018
			},
			methods : {
				plus : function() {
					this.year++;
				},
				minus : function() {
					this.year--;
				},
				submit : function() {
					alert("submitted");
					console.log("hello");
				}
			}
		});
	</script>
</html>
