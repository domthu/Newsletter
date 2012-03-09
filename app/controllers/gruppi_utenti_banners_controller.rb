class GruppiUtentiBannersController < ApplicationController
  # GET /gruppi_utenti_banners
  # GET /gruppi_utenti_banners.xml
  def index
    @gruppi_utenti_banners = GruppiUtentiBanner.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gruppi_utenti_banners }
    end
  end

  # GET /gruppi_utenti_banners/1
  # GET /gruppi_utenti_banners/1.xml
  def show
    @gruppi_utenti_banner = GruppiUtentiBanner.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gruppi_utenti_banner }
    end
  end

  # GET /gruppi_utenti_banners/new
  # GET /gruppi_utenti_banners/new.xml
  def new
    @gruppi_utenti_banner = GruppiUtentiBanner.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gruppi_utenti_banner }
    end
  end

  # GET /gruppi_utenti_banners/1/edit
  def edit
    @gruppi_utenti_banner = GruppiUtentiBanner.find(params[:id])
  end

  # POST /gruppi_utenti_banners
  # POST /gruppi_utenti_banners.xml
  def create
    @gruppi_utenti_banner = GruppiUtentiBanner.new(params[:gruppi_utenti_banner])

    respond_to do |format|
      if @gruppi_utenti_banner.save
        format.html { redirect_to(@gruppi_utenti_banner, :notice => 'Gruppi utenti banner was successfully created.') }
        format.xml  { render :xml => @gruppi_utenti_banner, :status => :created, :location => @gruppi_utenti_banner }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gruppi_utenti_banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gruppi_utenti_banners/1
  # PUT /gruppi_utenti_banners/1.xml
  def update
    @gruppi_utenti_banner = GruppiUtentiBanner.find(params[:id])

    respond_to do |format|
      if @gruppi_utenti_banner.update_attributes(params[:gruppi_utenti_banner])
        format.html { redirect_to(@gruppi_utenti_banner, :notice => 'Gruppi utenti banner was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gruppi_utenti_banner.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gruppi_utenti_banners/1
  # DELETE /gruppi_utenti_banners/1.xml
  def destroy
    @gruppi_utenti_banner = GruppiUtentiBanner.find(params[:id])
    @gruppi_utenti_banner.destroy

    respond_to do |format|
      format.html { redirect_to(gruppi_utenti_banners_url) }
      format.xml  { head :ok }
    end
  end
end
