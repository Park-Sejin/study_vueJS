// node에서 지원하는 path 모듈 
// => path.join(__dirname)를 사용하여 현재 경로로 접근 가능함
// => path.join(__dirname, 폴더명)을 입력하면 자동으로 경로를 합쳐줌
const path = require('path');
const { VueLoaderPlugin } = require('vue-loader');

// webpacking
module.exports = {
    mode : 'development', // 배포할 때는 'production'
    devtool : 'eval', // 배포할 때는 'hidden-source-map'
    // 확장자 처리 ( import시 확장자 생략 가능 )
    resolve : {
        extensions : ['.js', '.vue']
    },
    // 대표가 되는 파일 정의
    entry : {
        // 하나로 합쳐진 파일의 이름 : app
        app : path.join(__dirname, 'main.js'),
    },
    // webpack의 핵심
    // entry에서 처리하지 못한 예외 파일을 loader가 처리하도록 지정
    module : {
        rules : [{
            test : /\.vue$/,
            loader : 'vue-loader'
        }]
    },
    // module 처리 후 plugin 처리 output이 나오기 전에 한번 더 가공해주는 역할
    plugins : [
        new VueLoaderPlugin()
    ],
    // 최종 결과물 output
    output : {
        // entry에 정의한 name명을 사용
        filename : 'app.js',
        path : path.join(__dirname, 'dist')
    }
}