/* 1)주어진 데이터 담은 배열 생성
   2)반복문을 통해 최댓값을 검색
   3)알림팝업창 출력*/

let maxList=[23,54,78,13,44];
let max=maxList[0];
for(let i=0; i<maxList.length;i++ ){
    maxList[i]>max &&(max=maxList[i]);

}

alert(`최대값 >>${max}`);