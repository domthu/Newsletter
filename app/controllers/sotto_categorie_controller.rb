class SottoCategorieController < ApplicationController
  # GET /sotto_categorie
  # GET /sotto_categorie.xml
  def index
    @sotto_categorie = SottoCategoria.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sotto_categorie }
    end
  end

  # GET /sotto_categorie/1
  # GET /sotto_categorie/1.xml
  def show
    @sotto_categoria = SottoCategoria.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sotto_categoria }
    end
  end

  # GET /sotto_categorie/new
  # GET /sotto_categorie/new.xml
  def new
    @sotto_categoria = SottoCategoria.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sotto_categoria }
    end
  end

  # GET /sotto_categorie/1/edit
  def edit
    @sotto_categoria = SottoCategoria.find(params[:id])
  end

  # POST /sotto_categorie
  # POST /sotto_categorie.xml
  def create
    @sotto_categoria = SottoCategoria.new(params[:sotto_categoria])

    respond_to do |format|
      if @sotto_categoria.save
        format.html { redirect_to(@sotto_categoria, :notice => 'Sotto categoria was successfully created.') }
        format.xml  { render :xml => @sotto_categoria, :status => :created, :location => @sotto_categoria }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sotto_categoria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sotto_categorie/1
  # PUT /sotto_categorie/1.xml
  def update
    @sotto_categoria = SottoCategoria.find(params[:id])

    respond_to do |format|
      if @sotto_categoria.update_attributes(params[:sotto_categoria])
        format.html { redirect_to(@sotto_categoria, :notice => 'Sotto categoria was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sotto_categoria.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sotto_categorie/1
  # DELETE /sotto_categorie/1.xml
  def destroy
    @sotto_categoria = SottoCategoria.find(params[:id])
    @sotto_categoria.destroy

    respond_to do |format|
      format.html { redirect_to(sotto_categorie_url) }
      format.xml  { head :ok }
    end
  end
end
