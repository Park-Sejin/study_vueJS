<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>데이터 양방향 바인딩</title>
	</head>
	
	<body>
		<div id="app">
			<form v-on:submit.prevent="submit">
				<!-- onkeyup 대신 v-on:   => v-on:은 @로 대체 가능 -->
				<!-- <input type="text" :value="text" v-on:keyup="updateText"> <br> -->
				<!-- <input type="text" :value="text" @keyup="updateText"> <br> -->
				<input type="text" v-model="text"> <br>
				{{ text }} <br>
				<button type="submit">submit</button>
			</form>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				text : 'text'
			},
			methods : {
				submit : function() {
					alert("submitted");
					console.log("hello");
				},
				// event 매개변수를 자동으로 넣어줌
				/* updateText : function(event) {
					console.log(event);
					this.text = event.target.value;
				} */
			}
		});
	</script>
</html>
