class SpigheController < ApplicationController
  # GET /spighe
  # GET /spighe.xml
  def index
    @spighe = Spiga.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @spighe }
    end
  end

  # GET /spighe/1
  # GET /spighe/1.xml
  def show
    @spiga = Spiga.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @spiga }
    end
  end

  # GET /spighe/new
  # GET /spighe/new.xml
  def new
    @spiga = Spiga.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @spiga }
    end
  end

  # GET /spighe/1/edit
  def edit
    @spiga = Spiga.find(params[:id])
  end

  # POST /spighe
  # POST /spighe.xml
  def create
    @spiga = Spiga.new(params[:spiga])

    respond_to do |format|
      if @spiga.save
        format.html { redirect_to(@spiga, :notice => 'Spiga was successfully created.') }
        format.xml  { render :xml => @spiga, :status => :created, :location => @spiga }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @spiga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /spighe/1
  # PUT /spighe/1.xml
  def update
    @spiga = Spiga.find(params[:id])

    respond_to do |format|
      if @spiga.update_attributes(params[:spiga])
        format.html { redirect_to(@spiga, :notice => 'Spiga was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @spiga.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /spighe/1
  # DELETE /spighe/1.xml
  def destroy
    @spiga = Spiga.find(params[:id])
    @spiga.destroy

    respond_to do |format|
      format.html { redirect_to(spighe_url) }
      format.xml  { head :ok }
    end
  end
end
