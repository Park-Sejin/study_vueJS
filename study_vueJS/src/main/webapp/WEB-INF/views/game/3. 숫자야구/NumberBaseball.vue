<template>
  <div>
    <h1>{{ result }}</h1>
    <form @submit.prevent="onSubmitForm">
        <input type="text" v-model="value" ref="answer" maxlength="4" minlength="4">
        <button type="submit">입력</button>
    </form>
    <div>시도 : {{ tries.length }}</div>
    <ul>
        <li v-for="t in tries" :key="t.try">
            <div>{{ t.try }}</div>
            <div>{{ t.result }}</div>
        </li>
    </ul>
  </div>
</template>

<script>
// 화면과 관련 없으므로 컴포넌트의 메서드로 묶지 않음
const getNumbers = () => {
    const candidates = [1, 2, 3, 4, 5, 6, 7, 8, 9];
    const array = [];

    for(let i = 0; i < 4; i ++) {
        const chosen = candidates.splice(Math.floor(Math.random() * (9-i)), 1)[0];
        array.push(chosen);
    }

    return array;
}

export default {
    data() {
        return {
            answer : getNumbers(),
            tries : [],
            value : '',
            result : ''
        }
    },
    methods : {
        onSubmitForm(e) {
            // 정답
            if(this.value == this.answer.join('')){
                this.result = `홈런. 답은 ${this.answer.join('')}였습니다.`;
                this.tries = [];
                this.answer = getNumbers();

                alert('게임을 다시 실행합니다.');
            }
            // 정답이 아닐 때
            else{
                // 10번째 시도
                if(this.tries.length == 9){
                    this.result = `10번 틀려서 실패. 답은 ${this.answer.join('')}였습니다.`;
                    this.tries = [];
                    this.answer = getNumbers();

                    alert('게임을 다시 실행합니다.');
                }
                // 10번 미만 시도
                else {
                    const answerArray = this.value.split('').map(v => parseInt(v));
                    let strike = 0;
                    let ball = 0;

                    for(let i = 0; i < 4; i++){
                        // 숫자 자릿수 모두 정답
                        if(answerArray[i] == this.answer[i]){
                            strike++;
                        }
                        // 숫자만 정답
                        else if(this.answer.includes(answerArray[i])){
                            ball++;
                        }
                    }

                    this.tries.push({
                        try : this.value,
                        result : `${strike} 스트라이크, ${ball} 볼입니다.`
                    });
                }
            }

            this.value = '';
            this.$refs.answer.focus();
        }
    }
}
</script>

<style>

</style>