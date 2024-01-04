<template>
  <div id="app" class="container">
    <h1 class="text-center">Todo App</h1>
    <input type="text" class="w-100 p-2" placeholder="Type todo" @keyup.enter="addTodo" v-model="todoText">

    <hr>
    
    <Todo-list v-for="todo in todos" :todo="todo" :key="todo.id" @toggle-checkbox="toggleCheckbox" @click-delete="deleteTodo"></Todo-list>
  </div>
</template>

<script>
  import TodoList from './components/TodoList.vue'

  export default {
    components : {
      TodoList
    },
    data() {
      return {
        todoText : '',
        todos : [
          {
            id : 1,
            text : 'buy a car',
            checked : true
          },
          {
            id : 2,
            text : 'play game',
            checked : false
          }
        ]
      }
    },
    methods : {
      addTodo(e) {
        this.todos.push({
          id : this.todos[this.todos.length-1].id + 1,
          text : e.target.value,
          checked : false
        });

        this.todoText = '';
      },
      toggleCheckbox({id, checked}) {
        const index = this.todos.findIndex(todo => {
          return todo.id == id;
        });

        this.todos[index].checked = checked;
      },
      deleteTodo(id) {
        // const index = this.todos.findIndex(todo => {
        //   return todo.id == id;
        // });

        // this.todos.splice(index, 1);

        this.todos = this.todos.filter(todo => todo.id != id);
      }
    }
  }
</script>

<style>

</style>
