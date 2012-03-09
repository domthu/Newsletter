class OrganismiController < ApplicationController
  # GET /organismi
  # GET /organismi.xml
  def index
    @organismi = Organismo.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @organismi }
    end
  end

  # GET /organismi/1
  # GET /organismi/1.xml
  def show
    @organismo = Organismo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @organismo }
    end
  end

  # GET /organismi/new
  # GET /organismi/new.xml
  def new
    @organismo = Organismo.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @organismo }
    end
  end

  # GET /organismi/1/edit
  def edit
    @organismo = Organismo.find(params[:id])
  end

  # POST /organismi
  # POST /organismi.xml
  def create
    @organismo = Organismo.new(params[:organismo])

    respond_to do |format|
      if @organismo.save
        format.html { redirect_to(@organismo, :notice => 'Organismo was successfully created.') }
        format.xml  { render :xml => @organismo, :status => :created, :location => @organismo }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @organismo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /organismi/1
  # PUT /organismi/1.xml
  def update
    @organismo = Organismo.find(params[:id])

    respond_to do |format|
      if @organismo.update_attributes(params[:organismo])
        format.html { redirect_to(@organismo, :notice => 'Organismo was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @organismo.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /organismi/1
  # DELETE /organismi/1.xml
  def destroy
    @organismo = Organismo.find(params[:id])
    @organismo.destroy

    respond_to do |format|
      format.html { redirect_to(organismi_url) }
      format.xml  { head :ok }
    end
  end
end
