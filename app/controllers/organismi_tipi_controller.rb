class OrganismiTipiController < ApplicationController
  # GET /organismi_tipi
  # GET /organismi_tipi.xml
  def index
    @organismi_tipi = OrganismiTipi.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organismi_tipi }
    end
  end

  # GET /organismi_tipi/1
  # GET /organismi_tipi/1.xml
  def show
    @organismi_tipi = OrganismiTipi.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organismi_tipi }
    end
  end

  # GET /organismi_tipi/new
  # GET /organismi_tipi/new.xml
  def new
    @organismi_tipi = OrganismiTipi.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organismi_tipi }
    end
  end

  # GET /organismi_tipi/1/edit
  def edit
    @organismi_tipi = OrganismiTipi.find(params[:id])
  end

  # POST /organismi_tipi
  # POST /organismi_tipi.xml
  def create
    @organismi_tipi = OrganismiTipi.new(params[:organismi_tipi])

    respond_to do |format|
      if @organismi_tipi.save
        format.html { redirect_to(@organismi_tipi, :notice => 'Organismi tipi was successfully created.') }
        format.xml  { render :xml => @organismi_tipi, :status => :created, :location => @organismi_tipi }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organismi_tipi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organismi_tipi/1
  # PUT /organismi_tipi/1.xml
  def update
    @organismi_tipi = OrganismiTipi.find(params[:id])

    respond_to do |format|
      if @organismi_tipi.update_attributes(params[:organismi_tipi])
        format.html { redirect_to(@organismi_tipi, :notice => 'Organismi tipi was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organismi_tipi.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organismi_tipi/1
  # DELETE /organismi_tipi/1.xml
  def destroy
    @organismi_tipi = OrganismiTipi.find(params[:id])
    @organismi_tipi.destroy

    respond_to do |format|
      format.html { redirect_to(organismi_tipi_index_url) }
      format.xml  { head :ok }
    end
  end
end
