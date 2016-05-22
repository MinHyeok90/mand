class HomeController < ApplicationController
  def index
    @status = "index"
    @mandalarts = Mandalart.where('shared = ?',true).reverse
  end

  def create
    @status = "create"
     unless user_signed_in?
       redirect_to '/users/sign_in'
     end
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
    
    newmandal.save
    redirect_to "/home/mylist"
  end

  def update
    @status = "update"
    @mandal=Mandalart.find(params[:mandal_id])
  end

  def realupdate
    newmandal = Mandalart.find(params[:mandal_id])
    if newmandal.user == current_user
      newmandal.shared = params[:shared]
      newmandal.title = params[:title]
      
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
      newmandal.save
    end
    redirect_to "/home/mylist"
  end
  
  def remove
    @mandal=Mandalart.find(params[:mandal_id])
    if @mandal.user == current_user
      @mandal.destroy
    end
    redirect_to "/home/mylist"
  end
  
  def mylist
    @status = "mylist"
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
    if user_signed_in?
      newsugest = Sugestion.new
      newsugest.user = current_user
      newsugest.content = params[:content]
      newsugest.save
    else
      render "로그인 하셔야 작성할 수 있습니다."
    end
    redirect_to "/home/suggestion"
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
end
