/*화살표 함수: funtion 대신 '=>' 사용*/



const intro= ()=>{
    console.log('막내 지호1입니다');
}


intro();

const intro2= (name)=>{
    console.log(`막내 ${name}입니다`);
}

intro2('지호2');


// const intro3= (name)=>{
//     return `막내 ${name}입니다.`;
// }


const intro3= (name)=> `막내 ${name}입니다.`;
/*매개변수 1개:()생략가능
  실행문 1개:{}+return 생략가능 */

console.log( intro3('지호3'));