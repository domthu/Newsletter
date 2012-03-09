class OrganismiAssociatiController < ApplicationController
  # GET /organismi_associati
  # GET /organismi_associati.xml
  def index
    @organismi_associati = OrganismiAssociato.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organismi_associati }
    end
  end

  # GET /organismi_associati/1
  # GET /organismi_associati/1.xml
  def show
    @organismi_associato = OrganismiAssociato.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organismi_associato }
    end
  end

  # GET /organismi_associati/new
  # GET /organismi_associati/new.xml
  def new
    @organismi_associato = OrganismiAssociato.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organismi_associato }
    end
  end

  # GET /organismi_associati/1/edit
  def edit
    @organismi_associato = OrganismiAssociato.find(params[:id])
  end

  # POST /organismi_associati
  # POST /organismi_associati.xml
  def create
    @organismi_associato = OrganismiAssociato.new(params[:organismi_associato])

    respond_to do |format|
      if @organismi_associato.save
        format.html { redirect_to(@organismi_associato, :notice => 'Organismi associato was successfully created.') }
        format.xml  { render :xml => @organismi_associato, :status => :created, :location => @organismi_associato }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organismi_associato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organismi_associati/1
  # PUT /organismi_associati/1.xml
  def update
    @organismi_associato = OrganismiAssociato.find(params[:id])

    respond_to do |format|
      if @organismi_associato.update_attributes(params[:organismi_associato])
        format.html { redirect_to(@organismi_associato, :notice => 'Organismi associato was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organismi_associato.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organismi_associati/1
  # DELETE /organismi_associati/1.xml
  def destroy
    @organismi_associato = OrganismiAssociato.find(params[:id])
    @organismi_associato.destroy

    respond_to do |format|
      format.html { redirect_to(organismi_associati_url) }
      format.xml  { head :ok }
    end
  end
end
