<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>클래스와 스타일 바인딩</title>
		
		<style>
			.red {
				color : red;
			}
			
			.font-bold {
				font-weight: bold;
			}
		</style>
	</head>
	
	<body>
		<div id="app">
			<!-- 클래스 바인딩 -->
			<div :class="{ red : isRed, 'font-bold' : isBold }">Hello</div> <br>
			
			<!-- 스타일 바인딩 -->
			<div :style="{ color : red, fontSize : size }">Hello</div> <br>
			
			<button @click="update">Click</button>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				// 클래스 바인딩
				isRed : false,
				isBold : false,
				
				//스타일 바인딩
				red : 'red',
				size : '30px'
			},
			methods : {
				update : function() {
					this.isRed = !this.isRed;
					this.isBold = !this.isBold;
				}
			}
		});
	</script>
</html>
