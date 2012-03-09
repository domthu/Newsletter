class PagesController < ApplicationController

  def home
    @title = "Home"
	@sezioni = Sezione.find(:all)
	@categorie = Categoria.find(:all)
	
	end
 

  def contatti
    @title = "Contattami"
  end

  def about
    @title = "About"
  end
  
  def index
	@sezioni = Sezione.find(:all)
	@subsezioni = Sezione.categorie.find(:all)
	end
end