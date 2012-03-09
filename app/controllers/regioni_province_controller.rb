class RegioniProvinceController < ApplicationController
  # GET /regioni_province
  # GET /regioni_province.xml
  def index
    @regioni_province = RegioniProvincia.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @regioni_province }
    end
  end

  # GET /regioni_province/1
  # GET /regioni_province/1.xml
  def show
    @regioni_provincia = RegioniProvincia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @regioni_provincia }
    end
  end

  # GET /regioni_province/new
  # GET /regioni_province/new.xml
  def new
    @regioni_provincia = RegioniProvincia.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @regioni_provincia }
    end
  end

  # GET /regioni_province/1/edit
  def edit
    @regioni_provincia = RegioniProvincia.find(params[:id])
  end

  # POST /regioni_province
  # POST /regioni_province.xml
  def create
    @regioni_provincia = RegioniProvincia.new(params[:regioni_provincia])

    respond_to do |format|
      if @regioni_provincia.save
        format.html { redirect_to(@regioni_provincia, :notice => 'Regioni provincia was successfully created.') }
        format.xml  { render :xml => @regioni_provincia, :status => :created, :location => @regioni_provincia }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @regioni_provincia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /regioni_province/1
  # PUT /regioni_province/1.xml
  def update
    @regioni_provincia = RegioniProvincia.find(params[:id])

    respond_to do |format|
      if @regioni_provincia.update_attributes(params[:regioni_provincia])
        format.html { redirect_to(@regioni_provincia, :notice => 'Regioni provincia was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @regioni_provincia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /regioni_province/1
  # DELETE /regioni_province/1.xml
  def destroy
    @regioni_provincia = RegioniProvincia.find(params[:id])
    @regioni_provincia.destroy

    respond_to do |format|
      format.html { redirect_to(regioni_province_url) }
      format.xml  { head :ok }
    end
  end
end
