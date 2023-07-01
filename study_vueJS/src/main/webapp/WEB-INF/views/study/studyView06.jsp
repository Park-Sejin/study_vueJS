<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>computed 속성</title>
	</head>
	
	<body>
		<div id="app">
			<button @click="changeMessage">Click</button> <br>
			computed : {{ reversedMessage }} <br>
			function : {{ func_reversedMessage() }}
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				message : '안녕하세요'
			},
			// 언캐싱 : 호출마다 함수 로직 후 결과값 출력
			methods : {
				changeMessage : function() {
					return this.message = "헬로우";
				},
				func_reversedMessage : function() {
					return this.message.split('').reverse().join('');
				}
			},
			// 캐싱 : 최초 로직 후 호출마다 결과값만 출력
			computed : {
				reversedMessage : function() {
					return this.message.split('').reverse().join('');
				}
			}
		});
	</script>
</html>
