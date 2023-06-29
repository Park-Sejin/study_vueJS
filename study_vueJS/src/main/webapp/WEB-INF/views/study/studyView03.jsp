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
			<input v-bind:type="type" v-bind:value="inputData"> <br>
			<!-- v-bind 생략 가능 -->
			<input :type="type" :value="inputData"> <br>
			
			<a :href="getNotionLink('fa1fea4772ce43d0875dfe47749f6da2')">노션 링크</a>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				inputData : "hello hi",
				type : "text",
				link : "https://www.notion.so/"
			},
			methods : {
				getNotionLink : function(url) {
					return this.link + url;
				}
			}
		});
	</script>
</html>
