/*1)사용자로부터  이름을 입력받는다
  2)입력 받아온 이름을 공간에 넣어준다
  3)공간에 담아준 이름을 형태에 맞춰 콘솔창으로 출력해준다. 
  
  변수:데이터 담는 공간
  var: 재선언o 재할당o
  let: 재선언x 재할당o
  const:재선언x 재할당x
  재선언: 같은 변수 이름으로 다시 선언
  재할당: 변수에 값을 다시 넣음
  */

  let Name= prompt("이름을 입력하세요");
  console.log('어서오세요!');
  console.log(Name+'님, 환영합니다 😊');

  const userClass='Spring';
  //console.log(userClass+"반의 "+Name+"님 입니다.");

  Name='최영화'; //변수 재할당되어서 아래에는 최영화 출력됨

  
  /*template literals:표현식/문자열 삽입, 여러 줄 문자열 등 다양한 기능을 제공
  (백틱):``
  변수는 ${}안에 담음 */

  console.log(`환영합니다! ${userClass}반의 ${Name}님입니다.`);
  