class RuoliController < ApplicationController
  # GET /ruoli
  # GET /ruoli.xml
  def index
    @ruoli = Ruolo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ruoli }
    end
  end

  # GET /ruoli/1
  # GET /ruoli/1.xml
  def show
    @ruolo = Ruolo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ruolo }
    end
  end

  # GET /ruoli/new
  # GET /ruoli/new.xml
  def new
    @ruolo = Ruolo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ruolo }
    end
  end

  # GET /ruoli/1/edit
  def edit
    @ruolo = Ruolo.find(params[:id])
  end

  # POST /ruoli
  # POST /ruoli.xml
  def create
    @ruolo = Ruolo.new(params[:ruolo])

    respond_to do |format|
      if @ruolo.save
        format.html { redirect_to(@ruolo, :notice => 'Ruolo was successfully created.') }
        format.xml  { render :xml => @ruolo, :status => :created, :location => @ruolo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ruolo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ruoli/1
  # PUT /ruoli/1.xml
  def update
    @ruolo = Ruolo.find(params[:id])

    respond_to do |format|
      if @ruolo.update_attributes(params[:ruolo])
        format.html { redirect_to(@ruolo, :notice => 'Ruolo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ruolo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ruoli/1
  # DELETE /ruoli/1.xml
  def destroy
    @ruolo = Ruolo.find(params[:id])
    @ruolo.destroy

    respond_to do |format|
      format.html { redirect_to(ruoli_url) }
      format.xml  { head :ok }
    end
  end
end
