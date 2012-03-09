class EdizioniController < ApplicationController
  # GET /edizioni
  # GET /edizioni.xml
  def index
    @edizioni = Edizione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @edizioni }
    end
  end

  # GET /edizioni/1
  # GET /edizioni/1.xml
  def show
    @edizione = Edizione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @edizione }
    end
  end

  # GET /edizioni/new
  # GET /edizioni/new.xml
  def new
    @edizione = Edizione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @edizione }
    end
  end

  # GET /edizioni/1/edit
  def edit
    @edizione = Edizione.find(params[:id])
  end

  # POST /edizioni
  # POST /edizioni.xml
  def create
    @edizione = Edizione.new(params[:edizione])

    respond_to do |format|
      if @edizione.save
        format.html { redirect_to(@edizione, :notice => 'Edizione was successfully created.') }
        format.xml  { render :xml => @edizione, :status => :created, :location => @edizione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @edizione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /edizioni/1
  # PUT /edizioni/1.xml
  def update
    @edizione = Edizione.find(params[:id])

    respond_to do |format|
      if @edizione.update_attributes(params[:edizione])
        format.html { redirect_to(@edizione, :notice => 'Edizione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @edizione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /edizioni/1
  # DELETE /edizioni/1.xml
  def destroy
    @edizione = Edizione.find(params[:id])
    @edizione.destroy

    respond_to do |format|
      format.html { redirect_to(edizioni_url) }
      format.xml  { head :ok }
    end
  end
end
