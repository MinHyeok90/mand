#!/usr/bin/ruby
require 'rubygems'
require 'json'

every_mandal = Mandalart.all
k = Hash.new
every_mandal.each do |mandal|
  j = Hash.new
  j["content"] =  mandal.id;
                  mandal.title,
                  mandal.user_id,
                  mandal.shared,
                  mandal.box11,
                  mandal.box12,
                  mandal.box13,
                  mandal.box14,
                  mandal.box15,
                  mandal.box16,
                  mandal.box17,
                  mandal.box18,
                  mandal.box19,
                  mandal.box21,
                  mandal.box23,
                  mandal.box24,
                  mandal.box26,
                  mandal.box27,
                  mandal.box29,
                  mandal.box31,
                  mandal.box32,
                  mandal.box33,
                  mandal.box34,
                  mandal.box35,
                  mandal.box36,
                  mandal.box37,
                  mandal.box38,
                  mandal.box39,
                  mandal.box41,
                  mandal.box42,
                  mandal.box43,
                  mandal.box44,
                  mandal.box45,
                  mandal.box46,
                  mandal.box47,
                  mandal.box48,
                  mandal.box49,
                  mandal.box51,
                  mandal.box53,
                  mandal.box54,
                  mandal.box55,
                  mandal.box56,
                  mandal.box57,
                  mandal.box59,
                  mandal.box61,
                  mandal.box62,
                  mandal.box63,
                  mandal.box64,
                  mandal.box65,
                  mandal.box66,
                  mandal.box67,
                  mandal.box68,
                  mandal.box69,
                  mandal.box71,
                  mandal.box72,
                  mandal.box73,
                  mandal.box74,
                  mandal.box75,
                  mandal.box76,
                  mandal.box77,
                  mandal.box78,
                  mandal.box79,
                  mandal.box81,
                  mandal.box83,
                  mandal.box84,
                  mandal.box86,
                  mandal.box87,
                  mandal.box89,
                  mandal.box91,
                  mandal.box92,
                  mandal.box93,
                  mandal.box94,
                  mandal.box95,
                  mandal.box96,
                  mandal.box97,
                  mandal.box98,
                  mandal.box99,
                  mandal.stat11,
                  mandal.stat12,
                  mandal.stat13,
                  mandal.stat14,
                  mandal.stat15,
                  mandal.stat16,
                  mandal.stat17,
                  mandal.stat18,
                  mandal.stat19,
                  mandal.stat21,
                  mandal.stat23,
                  mandal.stat24,
                  mandal.stat26,
                  mandal.stat27,
                  mandal.stat29,
                  mandal.stat31,
                  mandal.stat32,
                  mandal.stat33,
                  mandal.stat34,
                  mandal.stat35,
                  mandal.stat36,
                  mandal.stat37,
                  mandal.stat38,
                  mandal.stat39,
                  mandal.stat41,
                  mandal.stat42,
                  mandal.stat43,
                  mandal.stat44,
                  mandal.stat45,
                  mandal.stat46,
                  mandal.stat47,
                  mandal.stat48,
                  mandal.stat49,
                  mandal.stat51,
                  mandal.stat53,
                  mandal.stat54,
                  mandal.stat55,
                  mandal.stat56,
                  mandal.stat57,
                  mandal.stat59,
                  mandal.stat61,
                  mandal.stat62,
                  mandal.stat63,
                  mandal.stat64,
                  mandal.stat65,
                  mandal.stat66,
                  mandal.stat67,
                  mandal.stat68,
                  mandal.stat69,
                  mandal.stat71,
                  mandal.stat72,
                  mandal.stat73,
                  mandal.stat74,
                  mandal.stat75,
                  mandal.stat76,
                  mandal.stat77,
                  mandal.stat78,
                  mandal.stat79,
                  mandal.stat81,
                  mandal.stat83,
                  mandal.stat84,
                  mandal.stat86,
                  mandal.stat87,
                  mandal.stat89,
                  mandal.stat91,
                  mandal.stat92,
                  mandal.stat93,
                  mandal.stat94,
                  mandal.stat95,
                  mandal.stat96,
                  mandal.stat97,
                  mandal.stat98,
                  mandal.stat99,
                  mandal.created_at,
                  mandal.updated_at
  k["mandal" +mandal.id.to_s] = j
end

aFile = File.new("test.json", "w")
aFile.syswrite(k.to_json)
aFile.close



every_mandal = Mandalart.all
k = Hash.new
every_mandal.each do |mandal|
  j = Hash.new
  j["id"] = mandal.id;
  j["title"] = mandal.title;
  j["user_id"] = mandal.user_id;
  j["shared"] = mandal.shared;
  j["box11"] = mandal.box11;
  j["box12"] = mandal.box12;
  j["box13"] = mandal.box13;
  j["box14"] = mandal.box14;
  j["box15"] = mandal.box15;
  j["box16"] = mandal.box16;
  j["box17"] = mandal.box17;
  j["box18"] = mandal.box18;
  j["box19"] = mandal.box19;
  j["box21"] = mandal.box21;
  j["box23"] = mandal.box23;
  j["box24"] = mandal.box24;
  j["box26"] = mandal.box26;
  j["box27"] = mandal.box27;
  j["box29"] = mandal.box29;
  j["box31"] = mandal.box31;
  j["box32"] = mandal.box32;
  j["box33"] = mandal.box33;
  j["box34"] = mandal.box34;
  j["box35"] = mandal.box35;
  j["box36"] = mandal.box36;
  j["box37"] = mandal.box37;
  j["box38"] = mandal.box38;
  j["box39"] = mandal.box39;
  j["box41"] = mandal.box41;
  j["box42"] = mandal.box42;
  j["box43"] = mandal.box43;
  j["box44"] = mandal.box44;
  j["box45"] = mandal.box45;
  j["box46"] = mandal.box46;
  j["box47"] = mandal.box47;
  j["box48"] = mandal.box48;
  j["box49"] = mandal.box49;
  j["box51"] = mandal.box51;
  j["box53"] = mandal.box53;
  j["box54"] = mandal.box54;
  j["box55"] = mandal.box55;
  j["box56"] = mandal.box56;
  j["box57"] = mandal.box57;
  j["box59"] = mandal.box59;
  j["box61"] = mandal.box61;
  j["box62"] = mandal.box62;
  j["box63"] = mandal.box63;
  j["box64"] = mandal.box64;
  j["box65"] = mandal.box65;
  j["box66"] = mandal.box66;
  j["box67"] = mandal.box67;
  j["box68"] = mandal.box68;
  j["box69"] = mandal.box69;
  j["box71"] = mandal.box71;
  j["box72"] = mandal.box72;
  j["box73"] = mandal.box73;
  j["box74"] = mandal.box74;
  j["box75"] = mandal.box75;
  j["box76"] = mandal.box76;
  j["box77"] = mandal.box77;
  j["box78"] = mandal.box78;
  j["box79"] = mandal.box79;
  j["box81"] = mandal.box81;
  j["box83"] = mandal.box83;
  j["box84"] = mandal.box84;
  j["box86"] = mandal.box86;
  j["box87"] = mandal.box87;
  j["box89"] = mandal.box89;
  j["box91"] = mandal.box91;
  j["box92"] = mandal.box92;
  j["box93"] = mandal.box93;
  j["box94"] = mandal.box94;
  j["box95"] = mandal.box95;
  j["box96"] = mandal.box96;
  j["box97"] = mandal.box97;
  j["box98"] = mandal.box98;
  j["box99"] = mandal.box99;
  j["stat11"] = mandal.stat11;
  j["stat12"] = mandal.stat12;
  j["stat13"] = mandal.stat13;
  j["stat14"] = mandal.stat14;
  j["stat15"] = mandal.stat15;
  j["stat16"] = mandal.stat16;
  j["stat17"] = mandal.stat17;
  j["stat18"] = mandal.stat18;
  j["stat19"] = mandal.stat19;
  j["stat21"] = mandal.stat21;
  j["stat23"] = mandal.stat23;
  j["stat24"] = mandal.stat24;
  j["stat26"] = mandal.stat26;
  j["stat27"] = mandal.stat27;
  j["stat29"] = mandal.stat29;
  j["stat31"] = mandal.stat31;
  j["stat32"] = mandal.stat32;
  j["stat33"] = mandal.stat33;
  j["stat34"] = mandal.stat34;
  j["stat35"] = mandal.stat35;
  j["stat36"] = mandal.stat36;
  j["stat37"] = mandal.stat37;
  j["stat38"] = mandal.stat38;
  j["stat39"] = mandal.stat39;
  j["stat41"] = mandal.stat41;
  j["stat42"] = mandal.stat42;
  j["stat43"] = mandal.stat43;
  j["stat44"] = mandal.stat44;
  j["stat45"] = mandal.stat45;
  j["stat46"] = mandal.stat46;
  j["stat47"] = mandal.stat47;
  j["stat48"] = mandal.stat48;
  j["stat49"] = mandal.stat49;
  j["stat51"] = mandal.stat51;
  j["stat53"] = mandal.stat53;
  j["stat54"] = mandal.stat54;
  j["stat55"] = mandal.stat55;
  j["stat56"] = mandal.stat56;
  j["stat57"] = mandal.stat57;
  j["stat59"] = mandal.stat59;
  j["stat61"] = mandal.stat61;
  j["stat62"] = mandal.stat62;
  j["stat63"] = mandal.stat63;
  j["stat64"] = mandal.stat64;
  j["stat65"] = mandal.stat65;
  j["stat66"] = mandal.stat66;
  j["stat67"] = mandal.stat67;
  j["stat68"] = mandal.stat68;
  j["stat69"] = mandal.stat69;
  j["stat71"] = mandal.stat71;
  j["stat72"] = mandal.stat72;
  j["stat73"] = mandal.stat73;
  j["stat74"] = mandal.stat74;
  j["stat75"] = mandal.stat75;
  j["stat76"] = mandal.stat76;
  j["stat77"] = mandal.stat77;
  j["stat78"] = mandal.stat78;
  j["stat79"] = mandal.stat79;
  j["stat81"] = mandal.stat81;
  j["stat83"] = mandal.stat83;
  j["stat84"] = mandal.stat84;
  j["stat86"] = mandal.stat86;
  j["stat87"] = mandal.stat87;
  j["stat89"] = mandal.stat89;
  j["stat91"] = mandal.stat91;
  j["stat92"] = mandal.stat92;
  j["stat93"] = mandal.stat93;
  j["stat94"] = mandal.stat94;
  j["stat95"] = mandal.stat95;
  j["stat96"] = mandal.stat96;
  j["stat97"] = mandal.stat97;
  j["stat98"] = mandal.stat98;
  j["stat99"] = mandal.stat99;
  j["created_at"] = mandal.created_at;
  j["updated_at"] = mandal.updated_at;
  k["mandal" +mandal.id.to_s] = j;
end

aFile = File.new("test.json", "w")
aFile.syswrite(k.to_json)
aFile.close
