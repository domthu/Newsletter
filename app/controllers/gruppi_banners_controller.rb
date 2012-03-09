class GruppiBannersController < ApplicationController
  # GET /gruppi_banners
  # GET /gruppi_banners.xml
  def index
    @gruppi_banners = GruppiBanner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gruppi_banners }
    end
  end

  # GET /gruppi_banners/1
  # GET /gruppi_banners/1.xml
  def show
    @gruppi_banner = GruppiBanner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gruppi_banner }
    end
  end

  # GET /gruppi_banners/new
  # GET /gruppi_banners/new.xml
  def new
    @gruppi_banner = GruppiBanner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gruppi_banner }
    end
  end

  # GET /gruppi_banners/1/edit
  def edit
    @gruppi_banner = GruppiBanner.find(params[:id])
  end

  # POST /gruppi_banners
  # POST /gruppi_banners.xml
  def create
    @gruppi_banner = GruppiBanner.new(params[:gruppi_banner])

    respond_to do |format|
      if @gruppi_banner.save
        format.html { redirect_to(@gruppi_banner, :notice => 'Gruppi banner was successfully created.') }
        format.xml  { render :xml => @gruppi_banner, :status => :created, :location => @gruppi_banner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gruppi_banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gruppi_banners/1
  # PUT /gruppi_banners/1.xml
  def update
    @gruppi_banner = GruppiBanner.find(params[:id])

    respond_to do |format|
      if @gruppi_banner.update_attributes(params[:gruppi_banner])
        format.html { redirect_to(@gruppi_banner, :notice => 'Gruppi banner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gruppi_banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gruppi_banners/1
  # DELETE /gruppi_banners/1.xml
  def destroy
    @gruppi_banner = GruppiBanner.find(params[:id])
    @gruppi_banner.destroy

    respond_to do |format|
      format.html { redirect_to(gruppi_banners_url) }
      format.xml  { head :ok }
    end
  end
end
