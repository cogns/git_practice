# git add . 은 모든 변경사항 staging area로 이동
git add .

# git commit은 staging area의 변경사항을 확정짓고 commitID 생성
git commit -m "메시지"

# 원격 repo에 upload
git push origin main #main : 브랜치명

# github 인증방법 2가지
# 1. token인증방식 : github에서 직접 보안키(token) 발급

# 2. 제3자인증(oauth)방식






# git 프로젝트 생성방법 2가지
# 방법1. 원격 repo 생성 후 clone

# 방법2. 로컬에서부터 이미 개발된 프로젝트 존재시에 github 업로드
# git init하면 해당 프로젝트 경로에 .git폴더 생성
git init

# 원격지 주소를 생성 및 추가
# 원격지 주소 추가
git remote add origin 레포주소
# 원격지 주소 삭제
git remote remove origin 
# 원격주고 변경
git remote set-url origin 레포주소


# git 설정정보 조회
git config --list

# 타인레포 clone 방법2가지

# 커밋이력 그대로 가져오기
git clone 타인레포주소

# 해당 폴더로 이동 후 git 명령어
git remote set-url origin 내레포주소
# 별도의 add, commit 필요없고 바로 push가능
git push origin main

# 커밋이력 없이 가져오기
git clone 타인레포주소
# 해당폴더로 이동 후에 .git폴더 삭제
git init
git remote add origin 내레포주소
git add .
git commit -m "메시지"
git push origin master #init을 통해 프로젝트가 생성될 경우 기본 branch는 master


# 사용자 지정 방법
# 전역적 사용자 (이름, email) 지정
git config --global user.name "cogns"
git config --global user.email "99cogns@naver.com"

# 지역적 사용자 (이름, email) 지정
# 현재 레파지토리에 한해서만 사용자 변경
git config --local user.name "cogns"
git config --local user.email "99cogns@naver.com"

# config 내용조회
# repository, 이름, email등...
git config --list

# 사용자 이름 조회
git config user.name
# 사용자 이메일 조회
git config user.email


# git ignore 파일 실습
# 확장자 .gitignore 파일 생성 후 git 추적 제외 대상 나열

# 작업중인 사항을 임시저장
git stash
# 저장된 최신의 작업목록 꺼내기
git stash pop
# 저장한 작업사항 목록조회
git stash list
# 저장한 작업목록 상세조회
git stash show -p 인덱스
