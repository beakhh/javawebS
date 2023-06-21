show tables;

create table member2 (
	idx 			int not null auto_increment , 			/*회원고유번호*/
	mid 			varchar(20) not null, 							/*회원 아이디 중복X*/
	pwd 			varchar(100) not null, 							/*회원 비밀번호(SHA256암호화 처리)*/
	nickName  varchar(20) not null, 								/*회원 별명(중복불허/수정하기)*/
	name 			varchar(20) not null,								/*회원 성명*/
	gender 		varchar(4) default '남자',						/*회원 성별*/
	birthday datetime default now(),							/*회원 생일*/
	tel 			varchar(15),												/*전화번호 (010-0000-0000)*/
	address 	varchar(100),												/*주소(다음API 우편번호 활용*/
	email 		varchar(50) not null,								/*이메일(아이디/비밀번호 분실시에 사용)- 형식체크필수*/
	homePage	varchar(50),												/*홈페이지*/
	job				varchar(20),												/*회원 직업*/
	hobby			varchar(100),												/*취미(2개이상 선택가능/ 구분자 '/'로 한다.*/
	photo			varchar(100) default 'noimage.jpg',	/*회원사진*/
	content 	text,																	/*회원 소개*/
	userInfor char(6) default '공개',								/*회원정보 공개여부(공개/비공개)*/
	userDel		char(2) default 'NO',								/*회원 탈퇴신청여부(NO:현재 활동 중, OK:탈퇴신청 중)*/
	point			int default 100,										/*회원 누적포인트(가입포인트100증정, 1회 방문시 10포인트 증가, 1일 최대 50포인트 증정)*/
	level			int default 3,											/*회원등급(0: 관리자, 1:우수회원, 2:정회원, 3:준회원)*/
	visitCnt	int default	0,											/*총 방문횟수*/
	startDate datetime default now(),							/*최초 가입일*/
	lastDate  datetime default now(),							/*마지막 가입일*/
	todayCnt	int default 0,											/*오늘 방문한 횟수*/
	
	primary key (idx),														/*주키 : idx(고유번호)*/
	unique key (mid)															/*중복 방지 키 : mid(고유 아이디)*/
);

desc member2;

drop table member2;

create table memberChat (
  idx   int  not null auto_increment primary key,
  nickName varchar(20) not null,
  chat  varchar(100) not null
);
desc memberChat;
drop table memberChat;

select * from memberChat order by idx desc limit 50;

select chat.* from (select * from memberChat order by idx desc limit 50) chat order by idx asc;