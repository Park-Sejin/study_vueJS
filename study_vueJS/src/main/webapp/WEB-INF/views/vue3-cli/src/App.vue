<!-- vbc -->
<template>
  <div>
    <AppHeader></AppHeader>

    {{ message }}

    <!-- v-on:click => @click -->
    <button @click="showAlert">경고</button>
  </div>
</template>

<script>
  import AppHeader from './components/AppHeader.vue';

  export default {
    components : {
      // '컴포넌트 이름' : 컴포넌트 내용
      // 'app-header' : AppHeader
      // 'AppHeader' : AppHeader
      // AppHeader : AppHeader
      AppHeader
    },
    // vda
    data() {
      return {
        message : 'hi'
      }
    },
    methods : {
      showAlert() {
        alert('hello');
      }
    }
  }
</script>

<style scoped>

</style>