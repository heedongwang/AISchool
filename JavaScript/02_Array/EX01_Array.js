//배열 생성
let numList=[];
numList=[1,2,3];
console.log(numList);

let numList2=[4,5,6];
console.log(numList2);

let numList3= new Array(5);
console.log(numList3);
numList3=[1,2,3,4,5,6,7];
console.log(numList3);


//배열 인덱스
let numList4=[7,8,9];
console.log(numList4[0]);

const  numList5=[];
numList5[0]=1;  //각 배열 인덱스번호마다 값 넣어주는 것은 가능하지만
numList5[1]='가나다';//전체 값을 한번에 넣어주는 건 불가능
numList5[2]=true;
console.log(numList5); 


//배열 길이
console.log(numList5.length);