## 문자열에서 필요한 값 추출하기
# substr("문자열", 시작인덱스, 끝인덱스) 인덱스 시작은 1
# 아래 - 부분도 한자리로 인식함
stu <- "800101-1"
sub <- substr(stu, 8,8)
sub
# 실행하면 1이 찍힘
# 이것을 통해서 주민번호를 통한 성별 추출이 가능함
# 1, 3 남자 2, 4 여자 5, 6 은 외국인...그외는 잘못된 값
# 문제
# 위 문법을 이용해서 주민번호를 입력하면
# 남, 여, 외 이렇게 출력되는 객체(함수)를 완성하시오

checker = function(stu){
  sub <- substr(stu, 8,8)
  return(if (sub == '1' | sub == '3') '남자' 
         else if (sub == '2' | sub == '4') '여자' 
         else if (sub == '5' | sub == '6') '외국인' 
         else    "잘못된 값")}

checker("800101-6")
checker("800101-2")

as.character("800101-2")


switch(sub, '1', "fff)
