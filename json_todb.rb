#!/usr/bin/ruby
require 'rubygems'
require 'json'
# 사용법 : json_tofile에 있는 내용을 rails c 콘솔에 입력 -> test.json파일 생성 && json_todb에 있는 내용 마찬가지로 콘솔에 입력 -> db에 저장됨.

#json파일로부터 데이터를 읽어, DB에 저장한다.
#만다라트 모델의 id 는 입력된 마지막 값으로부터 증가함을 확인했습니다.
file = open("test.json")
json = file.read
parsed = JSON.parse(json)
parsed.keys.each do |i|
  newmandal = Mandalart.new
  newmandal.id = parsed[i]["id"]    # 주의! 같은 id가 있으면 안됨.
  newmandal.title = parsed[i]["title"]
  newmandal.user_id = parsed[i]["user_id"]
  newmandal.shared = parsed[i]["shared"]
  
  newmandal.box11 =  parsed[i]["box11"]
  newmandal.box12 =  parsed[i]["box12"]
  newmandal.box13 =  parsed[i]["box13"]
  newmandal.box14 =  parsed[i]["box14"]
  newmandal.box15 =  parsed[i]["box15"]
  newmandal.box16 =  parsed[i]["box16"]
  newmandal.box17 =  parsed[i]["box17"]
  newmandal.box18 =  parsed[i]["box18"]
  newmandal.box19 =  parsed[i]["box19"]
  newmandal.box21 =  parsed[i]["box21"]
  newmandal.box23 =  parsed[i]["box23"]
  newmandal.box24 =  parsed[i]["box24"]
  newmandal.box26 =  parsed[i]["box26"]
  newmandal.box27 =  parsed[i]["box27"]
  newmandal.box29 =  parsed[i]["box29"]
  newmandal.box31 =  parsed[i]["box31"]
  newmandal.box32 =  parsed[i]["box32"]
  newmandal.box33 =  parsed[i]["box33"]
  newmandal.box34 =  parsed[i]["box34"]
  newmandal.box35 =  parsed[i]["box35"]
  newmandal.box36 =  parsed[i]["box36"]
  newmandal.box37 =  parsed[i]["box37"]
  newmandal.box38 =  parsed[i]["box38"]
  newmandal.box39 =  parsed[i]["box39"]
  newmandal.box41 =  parsed[i]["box41"]
  newmandal.box42 =  parsed[i]["box42"]
  newmandal.box43 =  parsed[i]["box43"]
  newmandal.box44 =  parsed[i]["box44"]
  newmandal.box45 =  parsed[i]["box45"]
  newmandal.box46 =  parsed[i]["box46"]
  newmandal.box47 =  parsed[i]["box47"]
  newmandal.box48 =  parsed[i]["box48"]
  newmandal.box49 =  parsed[i]["box49"]
  newmandal.box51 =  parsed[i]["box51"]
  newmandal.box53 =  parsed[i]["box53"]
  newmandal.box54 =  parsed[i]["box54"]
  newmandal.box55 =  parsed[i]["box55"]
  newmandal.box56 =  parsed[i]["box56"]
  newmandal.box57 =  parsed[i]["box57"]
  newmandal.box59 =  parsed[i]["box59"]
  newmandal.box61 =  parsed[i]["box61"]
  newmandal.box62 =  parsed[i]["box62"]
  newmandal.box63 =  parsed[i]["box63"]
  newmandal.box64 =  parsed[i]["box64"]
  newmandal.box65 =  parsed[i]["box65"]
  newmandal.box66 =  parsed[i]["box66"]
  newmandal.box67 =  parsed[i]["box67"]
  newmandal.box68 =  parsed[i]["box68"]
  newmandal.box69 =  parsed[i]["box69"]
  newmandal.box71 =  parsed[i]["box71"]
  newmandal.box72 =  parsed[i]["box72"]
  newmandal.box73 =  parsed[i]["box73"]
  newmandal.box74 =  parsed[i]["box74"]
  newmandal.box75 =  parsed[i]["box75"]
  newmandal.box76 =  parsed[i]["box76"]
  newmandal.box77 =  parsed[i]["box77"]
  newmandal.box78 =  parsed[i]["box78"]
  newmandal.box79 =  parsed[i]["box79"]
  newmandal.box81 =  parsed[i]["box81"]
  newmandal.box83 =  parsed[i]["box83"]
  newmandal.box84 =  parsed[i]["box84"]
  newmandal.box86 =  parsed[i]["box86"]
  newmandal.box87 =  parsed[i]["box87"]
  newmandal.box89 =  parsed[i]["box89"]
  newmandal.box91 =  parsed[i]["box91"]
  newmandal.box92 =  parsed[i]["box92"]
  newmandal.box93 =  parsed[i]["box93"]
  newmandal.box94 =  parsed[i]["box94"]
  newmandal.box95 =  parsed[i]["box95"]
  newmandal.box96 =  parsed[i]["box96"]
  newmandal.box97 =  parsed[i]["box97"]
  newmandal.box98 =  parsed[i]["box98"]
  newmandal.box99 =  parsed[i]["box99"]
  newmandal.stat11 = parsed[i]["stat11"]
  newmandal.stat12 = parsed[i]["stat12"]
  newmandal.stat13 = parsed[i]["stat13"]
  newmandal.stat14 = parsed[i]["stat14"]
  newmandal.stat15 = parsed[i]["stat15"]
  newmandal.stat16 = parsed[i]["stat16"]
  newmandal.stat17 = parsed[i]["stat17"]
  newmandal.stat18 = parsed[i]["stat18"]
  newmandal.stat19 = parsed[i]["stat19"]
  newmandal.stat21 = parsed[i]["stat21"]
  newmandal.stat23 = parsed[i]["stat23"]
  newmandal.stat24 = parsed[i]["stat24"]
  newmandal.stat26 = parsed[i]["stat26"]
  newmandal.stat27 = parsed[i]["stat27"]
  newmandal.stat29 = parsed[i]["stat29"]
  newmandal.stat31 = parsed[i]["stat31"]
  newmandal.stat32 = parsed[i]["stat32"]
  newmandal.stat33 = parsed[i]["stat33"]
  newmandal.stat34 = parsed[i]["stat34"]
  newmandal.stat35 = parsed[i]["stat35"]
  newmandal.stat36 = parsed[i]["stat36"]
  newmandal.stat37 = parsed[i]["stat37"]
  newmandal.stat38 = parsed[i]["stat38"]
  newmandal.stat39 = parsed[i]["stat39"]
  newmandal.stat41 = parsed[i]["stat41"]
  newmandal.stat42 = parsed[i]["stat42"]
  newmandal.stat43 = parsed[i]["stat43"]
  newmandal.stat44 = parsed[i]["stat44"]
  newmandal.stat45 = parsed[i]["stat45"]
  newmandal.stat46 = parsed[i]["stat46"]
  newmandal.stat47 = parsed[i]["stat47"]
  newmandal.stat48 = parsed[i]["stat48"]
  newmandal.stat49 = parsed[i]["stat49"]
  newmandal.stat51 = parsed[i]["stat51"]
  newmandal.stat53 = parsed[i]["stat53"]
  newmandal.stat54 = parsed[i]["stat54"]
  newmandal.stat55 = parsed[i]["stat55"]
  newmandal.stat56 = parsed[i]["stat56"]
  newmandal.stat57 = parsed[i]["stat57"]
  newmandal.stat59 = parsed[i]["stat59"]
  newmandal.stat61 = parsed[i]["stat61"]
  newmandal.stat62 = parsed[i]["stat62"]
  newmandal.stat63 = parsed[i]["stat63"]
  newmandal.stat64 = parsed[i]["stat64"]
  newmandal.stat65 = parsed[i]["stat65"]
  newmandal.stat66 = parsed[i]["stat66"]
  newmandal.stat67 = parsed[i]["stat67"]
  newmandal.stat68 = parsed[i]["stat68"]
  newmandal.stat69 = parsed[i]["stat69"]
  newmandal.stat71 = parsed[i]["stat71"]
  newmandal.stat72 = parsed[i]["stat72"]
  newmandal.stat73 = parsed[i]["stat73"]
  newmandal.stat74 = parsed[i]["stat74"]
  newmandal.stat75 = parsed[i]["stat75"]
  newmandal.stat76 = parsed[i]["stat76"]
  newmandal.stat77 = parsed[i]["stat77"]
  newmandal.stat78 = parsed[i]["stat78"]
  newmandal.stat79 = parsed[i]["stat79"]
  newmandal.stat81 = parsed[i]["stat81"]
  newmandal.stat83 = parsed[i]["stat83"]
  newmandal.stat84 = parsed[i]["stat84"]
  newmandal.stat86 = parsed[i]["stat86"]
  newmandal.stat87 = parsed[i]["stat87"]
  newmandal.stat89 = parsed[i]["stat89"]
  newmandal.stat91 = parsed[i]["stat91"]
  newmandal.stat92 = parsed[i]["stat92"]
  newmandal.stat93 = parsed[i]["stat93"]
  newmandal.stat94 = parsed[i]["stat94"]
  newmandal.stat95 = parsed[i]["stat95"]
  newmandal.stat96 = parsed[i]["stat96"]
  newmandal.stat97 = parsed[i]["stat97"]
  newmandal.stat98 = parsed[i]["stat98"]
  newmandal.stat99 = parsed[i]["stat99"]
  
  newmandal.created_at = parsed[i]["created_at"]
  newmandal.updated_at = parsed[i]["updated_at"]
  newmandal.save
end