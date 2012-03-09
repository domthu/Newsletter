class ProvinceController < ApplicationController
  # GET /province
  # GET /province.xml
  def index
    @province = Provincia.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @province }
    end
  end

  # GET /province/1
  # GET /province/1.xml
  def show
    @provincia = Provincia.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @provincia }
    end
  end

  # GET /province/new
  # GET /province/new.xml
  def new
    @provincia = Provincia.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @provincia }
    end
  end

  # GET /province/1/edit
  def edit
    @provincia = Provincia.find(params[:id])
  end

  # POST /province
  # POST /province.xml
  def create
    @provincia = Provincia.new(params[:provincia])

    respond_to do |format|
      if @provincia.save
        format.html { redirect_to(@provincia, :notice => 'Provincia was successfully created.') }
        format.xml  { render :xml => @provincia, :status => :created, :location => @provincia }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @provincia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /province/1
  # PUT /province/1.xml
  def update
    @provincia = Provincia.find(params[:id])

    respond_to do |format|
      if @provincia.update_attributes(params[:provincia])
        format.html { redirect_to(@provincia, :notice => 'Provincia was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @provincia.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /province/1
  # DELETE /province/1.xml
  def destroy
    @provincia = Provincia.find(params[:id])
    @provincia.destroy

    respond_to do |format|
      format.html { redirect_to(province_url) }
      format.xml  { head :ok }
    end
  end
end
