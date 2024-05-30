# 현재 working directory, staging area 만 상태 확인
git status

# git add . : 모든 수정/추가사항 add
git add .

# git add 특정파일 : 특정 파일 add
git add .\특정파일(위치포함) 

# local repository에 반영 및 커밋이력 생성
git commit -m "메시지타이틀" -m "메시지내용"

# vi모드에서 작성 : git commit 후 엔터

# add와 commit 동시에
git commit -am "add와 commit 동시에"




# commit 이력 확인(local repository의 이력)
git log
# git log 간결하게
git log --oneline
# 전체 이력 조회
git log --all
# 로그를 그래프 형태로 조회
git log --graph

# 원격저장소로 업로드
git push origin 브랜치명

# 충돌무시하고 강제 push
git push origin main --force

# 특정 commit ID로의 전환
git checkout 커밋ID

# 다시 현재의 main(브랜치)의 commit로 return
git checkout 브랜치명


# git pull은 원격의 변경사항을 local로 다운로드
git pull #main이 아닌 경우 origin 브랜치명 추가


# git 작업 취소
# working directory에서의 취소
# 수정사항만 취소
git checkout .
# working directory에서 추가파일 취소
git clean --fdx
# 수정취소 동시에
git checkout . | git clean --fdx
# staging area에서의 취소
git reset
# commit 이후의 취소
git reset HEAD~1
git reset HEAD^
# push 이후의 취소
git revert 커밋ID


# 버전별 비교 명령어 : diff
# A를 기준으로 B가 어떤 변경이 있는지를 비교
git diff A B
git diff commitID1 commitID2
git diff A브랜치 B브랜치


# 원격에 변경사항을 로컬에 가져오되 병합은 하지 않는것
# 비교 : git pull origin main 과 git fetch origin main 비교
# fetch는 가지고 오기만 하는것, pull은 가지고 와서 병합 하는것
git fetch 
git fetch --all #모든 브랜치 정보


# master브랜치와 test 브랜치가 있다고 했을 경우, 
# git merge test를 하게되면 
# test브랜치에만 있던 코드가 master브랜치에 병합된다. 
git mrege 브랜치명


# 작업중인 사항을 임시저장
git stash
# 저장된 최신의 작업목록 꺼내기
git stash pop
# 저장한 목록은 놔둔채 작업목록 적용
git stasg apply stash@인덱스값
# 저장한 작업사항 목록조회
git stash list
# 저장한 작업목록 상세조회
git stash show -p 인덱스
# 저장한 stash목록 전체 삭제
git stash clear

# 버전명시 tagging
git tag v1.0
git tag v1.0 -m "메시지(ex 주요추가사항)"

# tag release 배포
# commit push와 상관없이 태그(release) 별도 push
git push origin v1.0

# 태그 목록 조회
git tag



# 브랜치 생성
# 현재 ckeckout하고 있는 브랜치를 기준으로 브랜치 생성
git branch 브랜치명

# 해당 브랜치로 전환
git checkout 브랜치명

# 브랜치 목록 조회
git branch

# 브랜치 생성과 전환 동시에
git checkout -b 브랜치명

# 
