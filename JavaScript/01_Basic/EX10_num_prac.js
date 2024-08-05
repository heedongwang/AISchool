/*랜덤수 뽑고 숫자 입력 받아 랜덤수와 비교*/

let ans=parseInt(Math.random()*100+1); //0.00~0.99



while(true){
    let inp=Number(prompt('숫자를 입력하세요'));
    
    if(ans==inp){
        alert('정답입니다.');
        break;
    }else if(ans>inp){
        alert('입력한 수보다 큰 수입니다');
   
    }else if(ans<inp){
        alert("입력한 수보다 작은 수입니다");
    }
}

    