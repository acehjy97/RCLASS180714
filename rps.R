# sample(1:3,1,replace = TRUE) �ϸ� 1���� 3���� �߿��� �������� 
# �ϳ��� ��ȯ�մϴ�. 1:3 �� ������, 1�� ����, replace = TRUE �� �ѹ� ����
# ���ڸ� �ٽ� ������� �����ε� True�� �ָ� �ٽ� ���� �� �ֽ��ϴ�. �� 2
# �� �������� ���Ծ ���� ȸ������ �ٽ� 2�� ���� �� �ֽ��ϴ�.
# �̸� �̿��ؼ� ���������� �� �Լ��� �����ϼ���.
# ������ �Ʒ��� �����ϴ�.
# comVal <- sample(1:3,1,replace = TRUE) ��������.
# myVal <- 2
# rps <- function(comVal, myVal)
# �̱� 


rsp = function(myVal){
  comVal <- sample(1:3,1,replace = TRUE); print(comVal)
  return(if( myVal > comVal) '�̱�'
         else  if( myVal == comVal) '���'
         else '��')}
rsp(2)


rsp = function(myVal){
  comVal <- sample(1:3,1,replace = TRUE);comVal
  return(switch(myVal - comVal,
                1 = "�̱�",
                -2 = "�̱�",
                0 = "���",
                -1 = "��",
                2 = "��"))}
rsp(2)

rsp <- function(myVal){
  comVal <- sample(1:3,1,replace = TRUE);comVal
  return(switch(toString(myVal - comVal),
                '1' = "�̱�",
                '-2' = "�̱�",
                '0' = "���",
                '-1' = "��",
                '2' = "��"))}
rsp(1)
