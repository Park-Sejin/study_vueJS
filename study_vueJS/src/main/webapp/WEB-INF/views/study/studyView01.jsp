<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>뷰 인스턴스 생성</title>
	</head>
	
	<body>
		<div id="app">
			{{ message }}
		</div>
		
		<div id="app-2">
			<span v-bind:title="message">
				내 위에 잠시 마우스를 올리면 동적으로 바인딩 된 title을 볼 수 있습니다!
			</span>
		</div>
		
		<div id="app-3">
			<p v-if="seen">이제 나를 볼 수 있어요</p>
		</div>
		
		<div id="app-4">
			<ol>
				<li v-for="todo in todos">
					{{ todo.text }}
				</li>
			</ol>
		</div>
	</body>
	
	<script type="text/javascript">
		var app = new Vue({
			el: '#app', 
			data: {
				message: '안녕하세요 Vue!'
			}
		});
		
		var app2 = new Vue({
			el: '#app-2', 
			data: {
				message: '이 페이지는 ' + new Date() + ' 에 로드 되었습니다'
			}
		});
		
		var app3 = new Vue({
			el: '#app-3',
			data: {
				seen: true
			}
		});
		
		var app4 = new Vue({
			el: '#app-4',
			data: {
				todos: [
					{ text: 'JavaScript 배우기' },
					{ text: 'Vue 배우기' },
					{ text: '무언가 멋진 것을 만들기' }
				]
			}
		});
	</script>
</html>
