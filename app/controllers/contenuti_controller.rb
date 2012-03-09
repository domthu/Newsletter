class ContenutiController < ApplicationController
  # GET /contenuti
  # GET /contenuti.xml
  def index
    @contenuti = Contenuto.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @contenuti }
    end
  end

  # GET /contenuti/1
  # GET /contenuti/1.xml
  def show
    @contenuto = Contenuto.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @contenuto }
    end
  end

  # GET /contenuti/new
  # GET /contenuti/new.xml
  def new
    @contenuto = Contenuto.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @contenuto }
    end
  end

  # GET /contenuti/1/edit
  def edit
    @contenuto = Contenuto.find(params[:id])
  end

  # POST /contenuti
  # POST /contenuti.xml
  def create
    @contenuto = Contenuto.new(params[:contenuto])

    respond_to do |format|
      if @contenuto.save
        format.html { redirect_to(@contenuto, :notice => 'Contenuto was successfully created.') }
        format.xml  { render :xml => @contenuto, :status => :created, :location => @contenuto }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @contenuto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /contenuti/1
  # PUT /contenuti/1.xml
  def update
    @contenuto = Contenuto.find(params[:id])

    respond_to do |format|
      if @contenuto.update_attributes(params[:contenuto])
        format.html { redirect_to(@contenuto, :notice => 'Contenuto was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @contenuto.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /contenuti/1
  # DELETE /contenuti/1.xml
  def destroy
    @contenuto = Contenuto.find(params[:id])
    @contenuto.destroy

    respond_to do |format|
      format.html { redirect_to(contenuti_url) }
      format.xml  { head :ok }
    end
  end
end
