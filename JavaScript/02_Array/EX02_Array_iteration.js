//for문
let nameList=['희은','지호','재훈','승완'];

for(let i=0;i<nameList.length;i++){
    console.log(nameList[i]);
}

let foodList=['삼겹살','샌드위치','샐러드파스타','닭'];
for(let item of foodList){
    console.log(item);
}


let subList=['JavaScript','Java','DB'];
subList.forEach((item,index)=>{ //화살표함수 
    console.log(index,item);
})