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
  import { ref } from 'vue';

  export default {
    // 컴포지션 API
    setup() {
      // data - reactivity가 주입된 id와 pw를 ref라는 형태로 나타냄
      var userId = ref('');
      var userPass = ref('');

      // methods - 함수 표현식으로 작성함
      var submitForm = () => {
        // fake url : https://jsonplaceholder.typicode.com/
        axios.post('https://jsonplaceholder.typicode.com/users', {
          // ref로 지정한 변수 안에 value가 실제 사용하는 값
          userId : userId.value,
          userPass : userPass.value
        }).then(response => {
          console.log(response);
        });
      }

      // setup에서 return된 값들은 전부 인스턴스 옵션과 <template> 내에서 사용 가능
      return { userId, userPass, submitForm }
    },

    // 옵션 API
    // data() {
    //   return {
    //     userId : '',
    //     userPass : ''
    //   }
    // },
    // methods : {
    //   submitForm() {
    //     // fake url : https://jsonplaceholder.typicode.com/
    //     axios.post('https://jsonplaceholder.typicode.com/users', {
    //       userId : this.userId,
    //       userPass : this.userPass
    //     }).then(response => {
    //       console.log(response)
    //     });
    //   }
    // }
  }
</script>

<style scoped>

</style>