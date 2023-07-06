<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>v-for</title>
	</head>
	
	<body>
		<div id="app">
			<div>
				{{ people[0].name }} {{ people[0].age }}
			</div>
			<div>
				{{ people[1].name }} {{ people[1].age }}
			</div>
			<div>
				{{ people[2].name }} {{ people[2].age }}
			</div>
			<div>
				{{ people[3].name }} {{ people[3].age }}
			</div>
			
			<hr>
			
			<!-- person in people == person of people -->
			<!-- 고유한 key값을 지정해야함 -->
			<div v-for="(person, index) in people" :key="person.id">
				{{ index }} : {{ person.name }} {{ person.age }}
			</div>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				people : [
					{id : 1, name : 'a', age : 20}, 
					{id : 2, name : 'b', age : 21}, 
					{id : 3, name : 'c', age : 22}, 
					{id : 4, name : 'd', age : 23}, 
					{id : 5, name : 'e', age : 24}, 
					{id : 6, name : 'e', age : 25}
				]
			},
			methods : {
				
			}
		});
	</script>
</html>
