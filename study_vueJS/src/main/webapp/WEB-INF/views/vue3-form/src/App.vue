<template>
  <div>
    <form action="" @submit.prevent="submitForm">
      <div>
        <label for="userId">ID : </label>
        <input type="text" id="userId" v-model="userId">
      </div>
      <div>
        <label for="userPass">PW : </label>
        <input type="text" id="userPass" v-model="userPass">
      </div>
      <button type="submit">로그인</button>
    </form>
  </div>
</template>

<script>
  import axios from 'axios'

  export default {
    data() {
      return {
        userId : '',
        userPass : ''
      }
    },
    methods : {
      submitForm() {
        const data = {
          userId : this.userId,
          userPass : this.userPass
        };

        // fake url : https://jsonplaceholder.typicode.com/
        axios.post('https://jsonplaceholder.typicode.com/users', data)
          .then(response => {
            console.log(response)
          });
      }
    }
  }
</script>

<style scoped>

</style>