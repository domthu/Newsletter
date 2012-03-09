class AllegatiController < ApplicationController
  # GET /allegati
  # GET /allegati.xml
  def index
    @allegati = Allegato.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @allegati }
    end
  end

  # GET /allegati/1
  # GET /allegati/1.xml
  def show
    @allegato = Allegato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @allegato }
    end
  end

  # GET /allegati/new
  # GET /allegati/new.xml
  def new
    @allegato = Allegato.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @allegato }
    end
  end

  # GET /allegati/1/edit
  def edit
    @allegato = Allegato.find(params[:id])
  end

  # POST /allegati
  # POST /allegati.xml
  def create
    @allegato = Allegato.new(params[:allegato])

    respond_to do |format|
      if @allegato.save
        format.html { redirect_to(@allegato, :notice => 'Allegato was successfully created.') }
        format.xml  { render :xml => @allegato, :status => :created, :location => @allegato }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @allegato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /allegati/1
  # PUT /allegati/1.xml
  def update
    @allegato = Allegato.find(params[:id])

    respond_to do |format|
      if @allegato.update_attributes(params[:allegato])
        format.html { redirect_to(@allegato, :notice => 'Allegato was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @allegato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /allegati/1
  # DELETE /allegati/1.xml
  def destroy
    @allegato = Allegato.find(params[:id])
    @allegato.destroy

    respond_to do |format|
      format.html { redirect_to(allegati_url) }
      format.xml  { head :ok }
    end
  end
end
