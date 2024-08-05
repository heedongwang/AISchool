//함수: 특정 기능을 수행하는 소스코드를 하나로 묶어서 필요할 때마다 사용하기 위한 구조

//함수 선언
function intro(){
    console.log('막내 지호1입니다');
}

//호출
intro();

function intro2(name){
    console.log(`막내 ${name}입니다`);
}

intro2('지호2');

//매개변수+return문
function intro3(name){
    return `막내 ${name}입니다.`;
}

console.log( intro3('지호3'));