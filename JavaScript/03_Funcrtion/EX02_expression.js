//함수 표현식: 익명함수 형태로 변수 참조


const intro= function() {
    console.log('막내 지호1입니다');
}

intro();

const intro2= function(name){
    console.log(`막내 ${name}입니다`);
}

intro2('귀염둥이');