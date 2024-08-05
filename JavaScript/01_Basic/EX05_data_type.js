/*
1)number: 산술연산 가능 정수, 실수
2)String: 문자열
3)boolean: 참거짓
4)undefined: 값 할당된 적 없거난 존재 하지않는 속성
5)null: 의도적으로 값 나타내지 않음
 */

let val1;
console.log('선언만',val1);
val1='data';
console.log('할당후',val1);


let val2=null;
console.log(val2);


/*형변환
1)실수로 변환: parseFloat(val);
2)정수로 변환: parseInt(val);
3)숫자로 변환: Number(val);
4)문자로 변환: String(val);
*/


let val3='3.14';
let val4=5.23;
let val5='5';
let val6=100;


console.log(val3);

console.log('parseFloat',parseFloat(val3));

console.log('parseInt',parseInt(val3));
console.log('parseInt',parseInt(val4));

console.log('Number',Number(val3));
console.log('Number',Number(val5));

console.log('String',String(val4));
console.log('String',String(val6));
