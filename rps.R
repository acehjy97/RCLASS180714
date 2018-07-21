# sample(1:3,1,replace = TRUE) 하면 1부터 3까지 중에서 랜덤숫자 
# 하나를 반환합니다. 1:3 이 범위고, 1이 갯수, replace = TRUE 는 한번 뽑은
# 숫자를 다시 출력할지 여부인데 True를 주면 다시 뽑힐 수 있습니다. 즉 2
# 가 랜덤으로 나왔어도 다음 회차에서 다시 2가 나올 수 있습니다.
# 이를 이용해서 가위바위보 를 함수로 생성하세요.
# 예제는 아래와 같습니다.
# comVal <- sample(1:3,1,replace = TRUE) 복원추출.
# myVal <- 2
# rps <- function(comVal, myVal)
# 이김 


rsp = function(myVal){
  comVal <- sample(1:3,1,replace = TRUE); print(comVal)
  return(if( myVal > comVal) '이김'
         else  if( myVal == comVal) '비김'
         else '짐')}
rsp(2)


rsp = function(myVal){
  comVal <- sample(1:3,1,replace = TRUE);comVal
  return(switch(myVal - comVal,
                1 = "이김",
                -2 = "이김",
                0 = "비김",
                -1 = "짐",
                2 = "짐"))}
rsp(2)

rsp <- function(myVal){
  comVal <- sample(1:3,1,replace = TRUE);comVal
  return(switch(toString(myVal - comVal),
                '1' = "이김",
                '-2' = "이김",
                '0' = "비김",
                '-1' = "짐",
                '2' = "짐"))}
rsp(1)

