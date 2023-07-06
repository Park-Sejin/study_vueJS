<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>v-if와 v-show</title>
	</head>
	
	<body>
		<div id="app">
			<!-- v-if : false일 경우 렌더링을 안함 => 토글 비용이 높음 -->
			number : {{ number }} <br>
			<template v-if="number == 1">
				<div>if</div>
				<div>if</div>
				<div>if</div>
			</template>
			<div v-else-if="number == 2">else if</div>
			<div v-else>else</div> <br>
			<button @click="increaseNumber">Increase</button> <br><br>
			
			<!-- v-show : false일 경우 렌더링을 하지만 style로 숨김  => 초기 렌더링 비용이 높음 -->
			<div v-show="show">Yes</div> <br>
			<button @click="toggle">Toggle</button>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				number : 1, 
				show : false
			},
			methods : {
				increaseNumber : function() {
					this.number++;
				},
				toggle : function() {
					this.show = !this.show;
				}
			}
		});
	</script>
</html>
