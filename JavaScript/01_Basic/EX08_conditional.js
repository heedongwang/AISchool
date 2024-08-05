/*조건문: 비교, 판단*/

//let coffeemenu=prompt("메뉴입력");
let coffeemenu='아메리카노';

//조건?참:거짓
coffeemenu=='아메리카노' ? console.log('주문하신 음료 나왔습니다.'):console.log("잠시 기다려주세요");

// 조건 && 실행문
coffeemenu=='수박주스' &&console.log('이벤트 중인 메뉴입니다.');


//if문
let num=20;
if (num>10) {
    console.log('10보다 큰수입니다');
}else{
    console.log('10보다 작은 수입니다');
}