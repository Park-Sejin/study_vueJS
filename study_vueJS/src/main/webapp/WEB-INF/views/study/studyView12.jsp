<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
	<head>
		<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
		
		<title>vue 컴포넌트</title>
	</head>
	
	<body>
		<div id="app">
			<ex-button></ex-button>
		</div>
		
		<hr><hr>
		
		<div id="app-1">
			<ex-button></ex-button>
		</div>
	</body>
	
	<script type="text/javascript">
		/* // 컴포넌트 전역 등록
		// 컴포넌트를 더이상 사용하지 않더라도 최종 빌드에는 들어가게 됨. > 사용자가 내려받아야 하는 자바스크립트의 양이 불필요하게 커지므로 지역 등록이 나음
		Vue.component('hello-world', {
			template : '<div>hello-world</div>'
		}); 
		
		Vue.component('ex-button', {
			// 여러줄일 경우에는 ``로 묶어줌 / 전체 태그를 감싸주는 div태그를 써야함
			// 컴포넌트 안에 컴포넌트 사용 가능
			template : `
				<div>
					{{ name }} <br>
					<hello-world></hello-world> <br>
					<button @click="changeText">Click</button>
				</div>
			`, 
			// 재사용을 하는 컴포넌트이기 때문에 object를 넣게 되면 reference(주소값)으로 넘어가게 됨
			// => 여러군데에서 같은 컴포넌트를 사용하는 경우, 데이터값이 공유되기 때문에  Object 대신 Object reuturn 함수로 변경
			data : function(){
				return {
					name : 'aaaa'
				}
			},
			methods : {
				changeText : function() {
					this.name = 'aaaa updated';
				}
			}
		}); */
		
		// 컴포넌트 지역 등록
		helloWorld = {
			template : '<div>hello-world</div>'
		}
		
		var exButton = {
			// 컴포넌트 등록
			components : {
				'hello-world' : helloWorld
			}, 
			// 여러줄일 경우에는 ``로 묶어줌 / 전체 태그를 감싸주는 div태그를 써야함
			// 컴포넌트 안에 컴포넌트 사용 가능
			template : `
				<div>
					{{ name }} <br>
					<hello-world></hello-world> <br>
					<button @click="changeText">Click</button>
				</div>
			`, 
			// 재사용을 하는 컴포넌트이기 때문에 object를 넣게 되면 reference(주소값)으로 넘어가게 됨
			// => 여러군데에서 같은 컴포넌트를 사용하는 경우, 데이터값이 공유되기 때문에  Object 대신 Object reuturn 함수로 변경
			data : function(){
				return {
					name : 'aaaa'
				}
			},
			methods : {
				changeText : function() {
					this.name = 'aaaa updated';
				}
			}
		};
		
		var app = new Vue({
			el: '#app', 
			// 컴포넌트 등록
			components : {
				'ex-button' : exButton
			}, 
			data: {
				
			},
			methods : {
				
			}
		});
		
		var app1 = new Vue({
			el: '#app-1', 
			// 컴포넌트 등록
			components : {
				'ex-button' : exButton
			}, 
			data: {
				
			},
			methods : {
				
			}
		});
	</script>
</html>
