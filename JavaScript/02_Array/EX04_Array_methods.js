//배열 함수
let nameList=['양세영','최영화','조자연'];
console.log('초기배열',nameList);

//마지막 인덱스에 데이터 추가: push()
nameList.push('박병관');
console.log('마지막추가',nameList);

//마지막 인덱스의 데이터 삭제: pop();
nameList.pop();
console.log('마지막삭제',nameList);

//첫번째 인덱스에 데이터 추가:  unshift()
nameList.unshift('조준용');
console.log('첫번째 추가',nameList);

//첫번째 인덱스 데이터 삭제: shift()
nameList.shift();
console.log('첫번째삭제',nameList);

//특정 위치에 데이터 추가/ 삭제: splice()
nameList.splice(1,0,'이도연')
console.log('splice추가',nameList);
nameList.splice(2,1);
console.log('splice삭제',nameList);
nameList.splice(1,1,'박병관','최영화');
console.log('splice추가/삭제',nameList);