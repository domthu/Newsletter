class SezioniController < ApplicationController
  # GET /sezioni
  # GET /sezioni.xml
  def index
    @sezioni = Sezione.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sezioni }
    end
  end

  # GET /sezioni/1
  # GET /sezioni/1.xml
  def show
    @sezione = Sezione.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sezione }
    end
  end

  # GET /sezioni/new
  # GET /sezioni/new.xml
  def new
    @sezione = Sezione.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sezione }
    end
  end

  # GET /sezioni/1/edit
  def edit
    @sezione = Sezione.find(params[:id])
  end

  # POST /sezioni
  # POST /sezioni.xml
  def create
    @sezione = Sezione.new(params[:sezione])

    respond_to do |format|
      if @sezione.save
        format.html { redirect_to(@sezione, :notice => 'Sezione was successfully created.') }
        format.xml  { render :xml => @sezione, :status => :created, :location => @sezione }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sezione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sezioni/1
  # PUT /sezioni/1.xml
  def update
    @sezione = Sezione.find(params[:id])

    respond_to do |format|
      if @sezione.update_attributes(params[:sezione])
        format.html { redirect_to(@sezione, :notice => 'Sezione was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sezione.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /sezioni/1
  # DELETE /sezioni/1.xml
  def destroy
    @sezione = Sezione.find(params[:id])
    @sezione.destroy

    respond_to do |format|
      format.html { redirect_to(sezioni_url) }
      format.xml  { head :ok }
    end
  end
end
