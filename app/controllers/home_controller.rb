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
    newmandal.title = params[:title]
    newmandal.shared = params[:shared]
    
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
    redirect_to "/home/index"
  end

  def update
    @status = "update"
    @mandal=Mandalart.find(params[:mandal_id])
  end

  def realupdate
    newmandal = Mandalart.find(params[:mandal_id])
    if newmandal.user == current_user
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
end
