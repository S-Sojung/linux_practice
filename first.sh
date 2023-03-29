item="홍길동" #띄워쓰기 하면 안됨!!
# echo $item
# echo ${item}
# echo "${item} 입니다"

result=$(cat log.txt)
# echo $result

# ${} -> 변수를 사용할 때
# $() -> 리눅스 명령어를 사용할 때 

item_length=$(expr length ${item}) # 문자열의 길이를 가져옴 
# echo $item_length

#조건문
# if [[ $item_length == 3 ]];
# then #조건문이 맞으면
#     echo "값이 3입니다."
# else #조건문에 틀리면
#     echo "값이 다릅니다."
# fi #조건문의 끝 

#파일이 있는지 확인
# if [[ -e log.txt ]]; # -e 파일이 있는지 확인한다. " "로 묶어줄 수도 있다. 
# then 
#   echo "파일이 존재합니다."
# fi

#폴더가 있는지 확인
# if [[ ! -d ./temp  ]]; # ! 를 통해 not 을 의미 
# then 
#     echo "경로가 없습니다."
# else 
#     echo "경로가 있습니다."
#     exit 0 #스크립트 종료 (=return 0): 정상 종료 0 / 문제 1, -1
# fi
# echo "안녕~~" #스크립트가 종료 되었기 때문에 안나옴.

# 출력 성공 조건문
# if echo 123 > log.txt
# then #위 조건문 안에 있는 명령문이 성공 되면 아래가 출력 
#     echo "출력에 성공했습니다."
# fi
# if echo 123 > /dev/null
# then #위 조건문 안에 있는 명령문이 성공 되면 아래가 출력 
#     echo "출력에 성공했습니다."
# fi

# 반복문
# k=1
# while [[ k<5 ]] #&&와 ||을 사용하려면 대괄호가 두개 여야 한다. 
# do
#     echo "내용A"
#     k=k+1;
# done

for ((i=1; i<5; i=i+1))
do
    echo "내용B"
done

temp="가 나 다"
for item in $temp
do
    echo $item
done