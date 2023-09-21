<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>watch 속성</title>
	</head>
	
	<body>
		<div id="app">
			{{ message }} <br>
			<button @click="changeMessage">Click</button> <br>
			{{ updated }}
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				message : '안녕하세요',
				updated : '아니오'
			},
			// 언캐싱 : 호출마다 함수 로직 후 결과값 출력
			methods : {
				changeMessage : function() {
					return this.message = '헬로우';
				}
			},
			// 캐싱 : 최초 로직 후 호출마다 결과값만 출력
			computed : {
				reversedMessage : function() {
					return this.message.split('').reverse().join('');
				}
			},
			// 데이터 변경에 대한 응답으로 비동기식 또는 시간이 많이 소요되는 조작을 수행하려는 경우에 가장 유용
			watch : {
				// 파라메터 : 수정 데이터, 기존 데이터
				message : function(newVal, oldVal) {
					console.log(newVal, oldVal);
					this.updated = '네';
				}
			}
		});
	</script>
</html>
