class RegioniController < ApplicationController
  # GET /regioni
  # GET /regioni.xml
  def index
    @regioni = Regione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regioni }
    end
  end

  # GET /regioni/1
  # GET /regioni/1.xml
  def show
    @regione = Regione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regione }
    end
  end

  # GET /regioni/new
  # GET /regioni/new.xml
  def new
    @regione = Regione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regione }
    end
  end

  # GET /regioni/1/edit
  def edit
    @regione = Regione.find(params[:id])
  end

  # POST /regioni
  # POST /regioni.xml
  def create
    @regione = Regione.new(params[:regione])

    respond_to do |format|
      if @regione.save
        format.html { redirect_to(@regione, :notice => 'Regione was successfully created.') }
        format.xml  { render :xml => @regione, :status => :created, :location => @regione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regioni/1
  # PUT /regioni/1.xml
  def update
    @regione = Regione.find(params[:id])

    respond_to do |format|
      if @regione.update_attributes(params[:regione])
        format.html { redirect_to(@regione, :notice => 'Regione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regioni/1
  # DELETE /regioni/1.xml
  def destroy
    @regione = Regione.find(params[:id])
    @regione.destroy

    respond_to do |format|
      format.html { redirect_to(regioni_url) }
      format.xml  { head :ok }
    end
  end
end
