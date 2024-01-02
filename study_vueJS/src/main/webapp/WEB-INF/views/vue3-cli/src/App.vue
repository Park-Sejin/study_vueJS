<!-- vbc -->
<template>
  <div>
    <AppHeader v-bind:appTitle="message" v-on:change="changeMessage"></AppHeader>
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
        message : 'app header component'
      }
    },
    methods : {
      changeMessage() {
        this.message = '변경됨';
      }
    }
  }
</script>

<style scoped>

</style>