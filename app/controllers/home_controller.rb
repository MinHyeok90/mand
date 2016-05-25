class HomeController < ApplicationController
  before_action :require_login, except: [:index, :index_table] 
  
  def test
    @status = "mylist"
    @flag = "first"
    if user_signed_in?
      @mylist=Mandalart.where("user_id = ?", current_user).reverse
    else
      redirect_to "/users/sign_in"
    end
  end
  
  def index
    @status = "index"
    @mandalarts = Mandalart.where('shared = ?',true).reverse
  end
  def index_table
    @status = "index"
    @mandalarts = Mandalart.where('shared = ?',true).reverse
  end
  def index_div
    @status = "index"
    @mandalarts = Mandalart.where('shared = ?',true).reverse
  end
  def create
    @status = "create"
    @goal = params[:goal]
  end

  def write
    newmandal = Mandalart.new
    newmandal.user = current_user
    newmandal.shared = params[:shared]  #공유할지 안할지.

    if params[:title].empty?            #제목칸을 적지 않았다면 => 중심 목표를 title로 작성.
      newmandal.title = params[:box55]
    else
      newmandal.title = params[:title]
    end
    
    newmandal.box11 = params[:box11]
    newmandal.box12 = params[:box12]
    newmandal.box13 = params[:box13]
    newmandal.box14 = params[:box14]
    newmandal.box15 = params[:box15]
    newmandal.box16 = params[:box16]
    newmandal.box17 = params[:box17]
    newmandal.box18 = params[:box18]
    newmandal.box19 = params[:box19]
    
    newmandal.box21 = params[:box21]
    newmandal.box23 = params[:box23]
    newmandal.box24 = params[:box24]
    newmandal.box26 = params[:box26]
    newmandal.box27 = params[:box27]
    newmandal.box29 = params[:box29]
    
    newmandal.box31 = params[:box31]
    newmandal.box32 = params[:box32]
    newmandal.box33 = params[:box33]
    newmandal.box34 = params[:box34]
    newmandal.box35 = params[:box35]
    newmandal.box36 = params[:box36]
    newmandal.box37 = params[:box37]
    newmandal.box38 = params[:box38]
    newmandal.box39 = params[:box39]
    
    newmandal.box41 = params[:box41]
    newmandal.box42 = params[:box42]
    newmandal.box43 = params[:box43]
    newmandal.box44 = params[:box44]
    newmandal.box45 = params[:box45]
    newmandal.box46 = params[:box46]
    newmandal.box47 = params[:box47]
    newmandal.box48 = params[:box48]
    newmandal.box49 = params[:box49]
    
    newmandal.box51 = params[:box51]
    newmandal.box53 = params[:box53]
    newmandal.box54 = params[:box54]
    newmandal.box55 = params[:box55]
    newmandal.box56 = params[:box56]
    newmandal.box57 = params[:box57]
    newmandal.box59 = params[:box59]
    
    newmandal.box61 = params[:box61]
    newmandal.box62 = params[:box62]
    newmandal.box63 = params[:box63]
    newmandal.box64 = params[:box64]
    newmandal.box65 = params[:box65]
    newmandal.box66 = params[:box66]
    newmandal.box67 = params[:box67]
    newmandal.box68 = params[:box68]
    newmandal.box69 = params[:box69]
    
    newmandal.box71 = params[:box71]
    newmandal.box72 = params[:box72]
    newmandal.box73 = params[:box73]
    newmandal.box74 = params[:box74]
    newmandal.box75 = params[:box75]
    newmandal.box76 = params[:box76]
    newmandal.box77 = params[:box77]
    newmandal.box78 = params[:box78]
    newmandal.box79 = params[:box79]
    
    newmandal.box81 = params[:box81]
    newmandal.box83 = params[:box83]
    newmandal.box84 = params[:box84]
    newmandal.box86 = params[:box86]
    newmandal.box87 = params[:box87]
    newmandal.box89 = params[:box89]
    
    newmandal.box91 = params[:box91]
    newmandal.box92 = params[:box92]
    newmandal.box93 = params[:box93]
    newmandal.box94 = params[:box94]
    newmandal.box95 = params[:box95]
    newmandal.box96 = params[:box96]
    newmandal.box97 = params[:box97]
    newmandal.box98 = params[:box98]
    newmandal.box99 = params[:box99]
    
    
    newmandal.stat11 = "new"
    newmandal.stat12 = "new"
    newmandal.stat13 = "new"
    newmandal.stat14 = "new"
    newmandal.stat15 = "new"
    newmandal.stat16 = "new"
    newmandal.stat17 = "new"
    newmandal.stat18 = "new"
    newmandal.stat19 = "new"
    newmandal.stat21 = "new"
    newmandal.stat23 = "new"
    newmandal.stat24 = "new"
    newmandal.stat26 = "new"
    newmandal.stat27 = "new"
    newmandal.stat29 = "new"
    newmandal.stat31 = "new"
    newmandal.stat32 = "new"
    newmandal.stat33 = "new"
    newmandal.stat34 = "new"
    newmandal.stat35 = "new"
    newmandal.stat36 = "new"
    newmandal.stat37 = "new"
    newmandal.stat38 = "new"
    newmandal.stat39 = "new"
    newmandal.stat41 = "new"
    newmandal.stat42 = "new"
    newmandal.stat43 = "new"
    newmandal.stat44 = "new"
    newmandal.stat45 = "new"
    newmandal.stat46 = "new"
    newmandal.stat47 = "new"
    newmandal.stat48 = "new"
    newmandal.stat49 = "new"
    newmandal.stat51 = "new"
    newmandal.stat53 = "new"
    newmandal.stat54 = "new"
    newmandal.stat55 = "new"
    newmandal.stat56 = "new"
    newmandal.stat57 = "new"
    newmandal.stat59 = "new"
    newmandal.stat61 = "new"
    newmandal.stat62 = "new"
    newmandal.stat63 = "new"
    newmandal.stat64 = "new"
    newmandal.stat65 = "new"
    newmandal.stat66 = "new"
    newmandal.stat67 = "new"
    newmandal.stat68 = "new"
    newmandal.stat69 = "new"
    newmandal.stat71 = "new"
    newmandal.stat72 = "new"
    newmandal.stat73 = "new"
    newmandal.stat74 = "new"
    newmandal.stat75 = "new"
    newmandal.stat76 = "new"
    newmandal.stat77 = "new"
    newmandal.stat78 = "new"
    newmandal.stat79 = "new"
    newmandal.stat81 = "new"
    newmandal.stat83 = "new"
    newmandal.stat84 = "new"
    newmandal.stat86 = "new"
    newmandal.stat87 = "new"
    newmandal.stat89 = "new"
    newmandal.stat91 = "new"
    newmandal.stat92 = "new"
    newmandal.stat93 = "new"
    newmandal.stat94 = "new"
    newmandal.stat95 = "new"
    newmandal.stat96 = "new"
    newmandal.stat97 = "new"
    newmandal.stat98 = "new"
    newmandal.stat99 = "new"
    
    if newmandal.save
    	redirect_to "/home/mylist"
    else
    	render :text => newmandal.errors.messages[:title].first
    end
  end

  def update
    @status = "update"
    @mandal=Mandalart.find(params[:mandal_id])
  end

  def realupdate
    newmandal = Mandalart.find(params[:mandal_id])
    if newmandal.user == current_user
      newmandal.shared = params[:shared]
      
      if params[:title].empty?            #제목칸을 적지 않았다면 => 중심 목표를 title로 작성.
        newmandal.title = params[:box55]
      else
        newmandal.title = params[:title]
      end
      
      newmandal.box11 = params[:box11]
      newmandal.box12 = params[:box12]
      newmandal.box13 = params[:box13]
      newmandal.box14 = params[:box14]
      newmandal.box15 = params[:box15]
      newmandal.box16 = params[:box16]
      newmandal.box17 = params[:box17]
      newmandal.box18 = params[:box18]
      newmandal.box19 = params[:box19]
      
      newmandal.box21 = params[:box21]
      newmandal.box23 = params[:box23]
      newmandal.box24 = params[:box24]
      newmandal.box26 = params[:box26]
      newmandal.box27 = params[:box27]
      newmandal.box29 = params[:box29]
      
      newmandal.box31 = params[:box31]
      newmandal.box32 = params[:box32]
      newmandal.box33 = params[:box33]
      newmandal.box34 = params[:box34]
      newmandal.box35 = params[:box35]
      newmandal.box36 = params[:box36]
      newmandal.box37 = params[:box37]
      newmandal.box38 = params[:box38]
      newmandal.box39 = params[:box39]
      
      newmandal.box41 = params[:box41]
      newmandal.box42 = params[:box42]
      newmandal.box43 = params[:box43]
      newmandal.box44 = params[:box44]
      newmandal.box45 = params[:box45]
      newmandal.box46 = params[:box46]
      newmandal.box47 = params[:box47]
      newmandal.box48 = params[:box48]
      newmandal.box49 = params[:box49]
      
      newmandal.box51 = params[:box51]
      newmandal.box53 = params[:box53]
      newmandal.box54 = params[:box54]
      newmandal.box55 = params[:box55]
      newmandal.box56 = params[:box56]
      newmandal.box57 = params[:box57]
      newmandal.box59 = params[:box59]
      
      newmandal.box61 = params[:box61]
      newmandal.box62 = params[:box62]
      newmandal.box63 = params[:box63]
      newmandal.box64 = params[:box64]
      newmandal.box65 = params[:box65]
      newmandal.box66 = params[:box66]
      newmandal.box67 = params[:box67]
      newmandal.box68 = params[:box68]
      newmandal.box69 = params[:box69]
      
      newmandal.box71 = params[:box71]
      newmandal.box72 = params[:box72]
      newmandal.box73 = params[:box73]
      newmandal.box74 = params[:box74]
      newmandal.box75 = params[:box75]
      newmandal.box76 = params[:box76]
      newmandal.box77 = params[:box77]
      newmandal.box78 = params[:box78]
      newmandal.box79 = params[:box79]
      
      newmandal.box81 = params[:box81]
      newmandal.box83 = params[:box83]
      newmandal.box84 = params[:box84]
      newmandal.box86 = params[:box86]
      newmandal.box87 = params[:box87]
      newmandal.box89 = params[:box89]
      
      newmandal.box91 = params[:box91]
      newmandal.box92 = params[:box92]
      newmandal.box93 = params[:box93]
      newmandal.box94 = params[:box94]
      newmandal.box95 = params[:box95]
      newmandal.box96 = params[:box96]
      newmandal.box97 = params[:box97]
      newmandal.box98 = params[:box98]
      newmandal.box99 = params[:box99]
      
      if newmandal.save
      	redirect_to "/home/mylist"
      else
      	render :text => newmandal.errors.messages[:title].first
      end
    else
      redirect_to "/home/mylist"
    end
  end
  
  def remove
    @mandal=Mandalart.find(params[:mandal_id])
    if @mandal.user == current_user
      @mandal.destroy
    end
    redirect_to "/home/mylist"
  end
  
  def mylist
    redirect_to "/home/mylist_simple"
    @status = "mylist"
    if user_signed_in?
      @mylist=Mandalart.where("user_id = ?", current_user).reverse
    else
      redirect_to "/users/sign_in"
    end
  end
  
  def mylist_simple
    @status = "mylist"
    @flag = "first"
    if user_signed_in?
      @mylist=Mandalart.where("user_id = ?", current_user).reverse
    else
      redirect_to "/users/sign_in"
    end
  end
  
  def suggestion
    @status = "suggestion"
    @suggestions = Sugestion.all.reverse
  end
  
  def suggest
    newsugest = Sugestion.new
    newsugest.user = current_user
    newsugest.content = params[:content]
    if newsugest.save
    	redirect_to "/home/suggestion"
    else
    	render :text => newsugest.errors.messages[:title].first
    end
  end
  
  def removesuggest
    suggestion = Sugestion.find(params[:sug_id])
    if suggestion.user == current_user
      suggestion.destroy
    end
    redirect_to "/home/suggestion"
  end
  
  def update_stat
    onemandal = Mandalart.find(params[:mandal_id])
    case params[:stat]
    when "stat11" 
      onemandal.stat11 = params[:statstr]
    when "stat12" 
      onemandal.stat12 = params[:statstr]
    when "stat13" 
      onemandal.stat13 = params[:statstr]
    when "stat14" 
      onemandal.stat14 = params[:statstr]
    when "stat15" 
      onemandal.stat15 = params[:statstr]
    when "stat16" 
      onemandal.stat16 = params[:statstr]
    when "stat17" 
      onemandal.stat17 = params[:statstr]
    when "stat18" 
      onemandal.stat18 = params[:statstr]
    when "stat19" 
      onemandal.stat19 = params[:statstr]
    when "stat21" 
      onemandal.stat21 = params[:statstr]
    when "stat23" 
      onemandal.stat23 = params[:statstr]
    when "stat24" 
      onemandal.stat24 = params[:statstr]
    when "stat26" 
      onemandal.stat26 = params[:statstr]
    when "stat27" 
      onemandal.stat27 = params[:statstr]
    when "stat29" 
      onemandal.stat29 = params[:statstr]
    when "stat31" 
      onemandal.stat31 = params[:statstr]
    when "stat32" 
      onemandal.stat32 = params[:statstr]
    when "stat33" 
      onemandal.stat33 = params[:statstr]
    when "stat34" 
      onemandal.stat34 = params[:statstr]
    when "stat35" 
      onemandal.stat35 = params[:statstr]
    when "stat36" 
      onemandal.stat36 = params[:statstr]
    when "stat37" 
      onemandal.stat37 = params[:statstr]
    when "stat38" 
      onemandal.stat38 = params[:statstr]
    when "stat39" 
      onemandal.stat39 = params[:statstr]
    when "stat41" 
      onemandal.stat41 = params[:statstr]
    when "stat42" 
      onemandal.stat42 = params[:statstr]
    when "stat43" 
      onemandal.stat43 = params[:statstr]
    when "stat44" 
      onemandal.stat44 = params[:statstr]
    when "stat45" 
      onemandal.stat45 = params[:statstr]
    when "stat46" 
      onemandal.stat46 = params[:statstr]
    when "stat47" 
      onemandal.stat47 = params[:statstr]
    when "stat48" 
      onemandal.stat48 = params[:statstr]
    when "stat49" 
      onemandal.stat49 = params[:statstr]
    when "stat51" 
      onemandal.stat51 = params[:statstr]
    when "stat53" 
      onemandal.stat53 = params[:statstr]
    when "stat54" 
      onemandal.stat54 = params[:statstr]
    when "stat55" 
      onemandal.stat55 = params[:statstr]
    when "stat56" 
      onemandal.stat56 = params[:statstr]
    when "stat57" 
      onemandal.stat57 = params[:statstr]
    when "stat59" 
      onemandal.stat59 = params[:statstr]
    when "stat61" 
      onemandal.stat61 = params[:statstr]
    when "stat62" 
      onemandal.stat62 = params[:statstr]
    when "stat63" 
      onemandal.stat63 = params[:statstr]
    when "stat64" 
      onemandal.stat64 = params[:statstr]
    when "stat65" 
      onemandal.stat65 = params[:statstr]
    when "stat66" 
      onemandal.stat66 = params[:statstr]
    when "stat67" 
      onemandal.stat67 = params[:statstr]
    when "stat68" 
      onemandal.stat68 = params[:statstr]
    when "stat69" 
      onemandal.stat69 = params[:statstr]
    when "stat71" 
      onemandal.stat71 = params[:statstr]
    when "stat72" 
      onemandal.stat72 = params[:statstr]
    when "stat73" 
      onemandal.stat73 = params[:statstr]
    when "stat74" 
      onemandal.stat74 = params[:statstr]
    when "stat75" 
      onemandal.stat75 = params[:statstr]
    when "stat76" 
      onemandal.stat76 = params[:statstr]
    when "stat77" 
      onemandal.stat77 = params[:statstr]
    when "stat78" 
      onemandal.stat78 = params[:statstr]
    when "stat79" 
      onemandal.stat79 = params[:statstr]
    when "stat81" 
      onemandal.stat81 = params[:statstr]
    when "stat83" 
      onemandal.stat83 = params[:statstr]
    when "stat84" 
      onemandal.stat84 = params[:statstr]
    when "stat86" 
      onemandal.stat86 = params[:statstr]
    when "stat87" 
      onemandal.stat87 = params[:statstr]
    when "stat89" 
      onemandal.stat89 = params[:statstr]
    when "stat91" 
      onemandal.stat91 = params[:statstr]
    when "stat92" 
      onemandal.stat92 = params[:statstr]
    when "stat93" 
      onemandal.stat93 = params[:statstr]
    when "stat94" 
      onemandal.stat94 = params[:statstr]
    when "stat95" 
      onemandal.stat95 = params[:statstr]
    when "stat96" 
      onemandal.stat96 = params[:statstr]
    when "stat97" 
      onemandal.stat97 = params[:statstr]
    when "stat98" 
      onemandal.stat98 = params[:statstr]
    when "stat99" 
      onemandal.stat99 = params[:statstr]
      
    end
    onemandal.save
  end
  
  def copy
    if user_signed_in?
      exist_modal = Mandalart.find(params[:mandal_id])
      newmandal = exist_modal.dup
      newmandal.user = current_user
      newmandal.shared = true  #공유할지 안할지.
      
      newmandal.save
      redirect_to "/home/mylist"
    else
      redirect_to "/users/sign_in"
    end
  end
  
  def manager_page
    # 관리자 권한 확인
    # 유저 속성에 권한 넣거나, 관리자 테이블.
    # 관리자 권한 획득방법....을 주면 안되지. 이건 콘솔에서만 되도록 해야지.
    
    if current_user.id != 1       #관리자는 1번 유저.
      redirect_to '/home/mylist'
    end
  end
  
  def manager_uploading_json
    if current_user.id != 1       #관리자는 1번 유저.
      redirect_to '/home/mylist'
    end
    # file = File.new("mandal.json", "w") 
    @json = params[:jsonfile]
    #redirect_to '/home/manager_page'
  end
  
  def manager_json_upload #외부 json 파일 업로드 페이지
  end
  
  def manager_write_json_backup
    if current_user.id != 1       #관리자는 1번 유저.
      redirect_to '/home/mylist'
    end
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
      k["mandal" << mandal.id.to_s] = j;
    end
    aFile = File.new("mandal.json", "w")  #mandal.json으로 mandalart의 모든 내용을 백업함.
    aFile.syswrite(k.to_json)
    aFile.close
  end
  
  def manager_mandaldown
    if current_user.id != 1       #관리자는 1번 유저.
      redirect_to '/home/mylist'
    else
      send_file("mandal.json")
    end
  end
  
  def manager_read_json_backup
    if current_user.id != 1       #관리자는 1번 유저.
      redirect_to '/home/mylist'
    end
    
    file = open("mandal.json")  #backup한 파일을 불러 mandalart를 복구함. 단, 유저는 복구하지 않음.
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
  end
  
end
