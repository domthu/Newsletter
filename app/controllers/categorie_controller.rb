class CategorieController < ApplicationController
  # GET /categorie
  # GET /categorie.xml
  def index
    @categorie = Categoria.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @categorie }
    end
  end

  # GET /categorie/1
  # GET /categorie/1.xml
  def show
    @categoria = Categoria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @categoria }
    end
  end

  # GET /categorie/new
  # GET /categorie/new.xml
  def new
    @categoria = Categoria.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @categoria }
    end
  end

  # GET /categorie/1/edit
  def edit
    @categoria = Categoria.find(params[:id])
  end

  # POST /categorie
  # POST /categorie.xml
  def create
    @categoria = Categoria.new(params[:categoria])

    respond_to do |format|
      if @categoria.save
        format.html { redirect_to(@categoria, :notice => 'Categoria was successfully created.') }
        format.xml  { render :xml => @categoria, :status => :created, :location => @categoria }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @categoria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /categorie/1
  # PUT /categorie/1.xml
  def update
    @categoria = Categoria.find(params[:id])

    respond_to do |format|
      if @categoria.update_attributes(params[:categoria])
        format.html { redirect_to(@categoria, :notice => 'Categoria was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @categoria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /categorie/1
  # DELETE /categorie/1.xml
  def destroy
    @categoria = Categoria.find(params[:id])
    @categoria.destroy

    respond_to do |format|
      format.html { redirect_to(categorie_url) }
      format.xml  { head :ok }
    end
  end
end
