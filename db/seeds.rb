# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.new
user.email = 'test@gmail.com'
user.encrypted_password = '#$taawktljasktlw4aaglj'
user.password = 'testtest'
user.password_confirmation = 'testtest'
user.save!

@mandal = Mandalart.new
@mandal.user = user;
@mandal.title = "오타니 쇼헤이 목표달성표 예제"
@mandal.shared = true;
@mandal.box11 = "몸 관리"
@mandal.box12 = "영양제먹기"
@mandal.box13 = "FSQ90KG"
@mandal.box14 = "인스텝개션"
@mandal.box15 = "몸통강화"
@mandal.box16 = "축을 흔들리지 않기"
@mandal.box17 = "각도를 만든다"
@mandal.box18 = "공을 위에서 던진다"
@mandal.box19 = "손목강화"

@mandal.box21 = "유연성"
@mandal.box23 = "RSQ130KG"
@mandal.box24 = "릴리즈 포인트 안정"
@mandal.box26 = "불안정함을 없애기"
@mandal.box27 = "힘모으기"
@mandal.box29 = "하체주도로"

@mandal.box31 = "스테미너"
@mandal.box32 = "가동역"
@mandal.box33 = "식사 저녁 7수저(가득) 아침 3수저"
@mandal.box34 = "하체강화"
@mandal.box35 = "몸을 열지않기"
@mandal.box36 = "멘탈 컨트롤 하기"
@mandal.box37 = "볼을 앞에서 릴리즈"
@mandal.box38 = "회전수 업"
@mandal.box39 = "가동역"

@mandal.box41 = "뚜렷한 목표, 목적을 가진다."
@mandal.box42 = "일희일비 하지않기"
@mandal.box43 = "머리는 차갑게 심장은 뜨겁게"
@mandal.box44 = "몸 만들기"
@mandal.box45 = "제구"
@mandal.box46 = "구위"
@mandal.box47 = "축을 돌리기"
@mandal.box48 = "하체강화"
@mandal.box49 = "체중증가"

@mandal.box51 = "핀치에 강하게"
@mandal.box53 = "분위기에 휩쓸리지 않기"
@mandal.box54 = "멘탈"
@mandal.box55 = "8구단 드레프트 1순위"
@mandal.box56 = "스피드 160km/h"
@mandal.box57 = "몸통강화"
@mandal.box59 = "어깨주위강화"

@mandal.box61 = "마음의 파도를 만들지 말기"
@mandal.box62 = "승리에 대한 집념"
@mandal.box63 = "동료를 배려하는 마음"
@mandal.box64 = "인간성"
@mandal.box65 = "운"
@mandal.box66 = "변화구"
@mandal.box67 = "가동역"
@mandal.box68 = "라이너캐치볼"
@mandal.box69 = "피칭을 늘리기"

@mandal.box71 = "감성"
@mandal.box72 = "사랑받는사람"
@mandal.box73 = "계획성"
@mandal.box74 = "인사하기"
@mandal.box75 = "쓰레기 줍기"
@mandal.box76 = "부실 청소"
@mandal.box77 = "카운트 볼 늘리기"
@mandal.box78 = "포크볼 완성"
@mandal.box79 = "슬라이더의 구위"

@mandal.box81 = "배려"
@mandal.box83 = "감사"
@mandal.box84 = "물건을 소중히 쓰자"
@mandal.box86 = "심판분을 대하는 태도"
@mandal.box87 = "늦게 낙차가 있는 커브"
@mandal.box89 = "좌타자 결정구"

@mandal.box91 = "예의"
@mandal.box92 = "신뢰받는 사람"
@mandal.box93 = "지속력"
@mandal.box94 = "플러스 사고"
@mandal.box95 = "응원받는 사람이 되자"
@mandal.box96 = "책읽기"
@mandal.box97 = "직구와 같은 폼으로 던지기"
@mandal.box98 = "스트라이크에서 볼을 던지는 제구"
@mandal.box99 = "거리를 이미지한다."

@mandal.save