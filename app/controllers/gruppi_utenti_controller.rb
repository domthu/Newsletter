class GruppiUtentiController < ApplicationController
  # GET /gruppi_utenti
  # GET /gruppi_utenti.xml
  def index
    @gruppi_utenti = GruppiUtente.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @gruppi_utenti }
    end
  end

  # GET /gruppi_utenti/1
  # GET /gruppi_utenti/1.xml
  def show
    @gruppi_utente = GruppiUtente.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @gruppi_utente }
    end
  end

  # GET /gruppi_utenti/new
  # GET /gruppi_utenti/new.xml
  def new
    @gruppi_utente = GruppiUtente.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @gruppi_utente }
    end
  end

  # GET /gruppi_utenti/1/edit
  def edit
    @gruppi_utente = GruppiUtente.find(params[:id])
  end

  # POST /gruppi_utenti
  # POST /gruppi_utenti.xml
  def create
    @gruppi_utente = GruppiUtente.new(params[:gruppi_utente])

    respond_to do |format|
      if @gruppi_utente.save
        format.html { redirect_to(@gruppi_utente, :notice => 'Gruppi utente was successfully created.') }
        format.xml  { render :xml => @gruppi_utente, :status => :created, :location => @gruppi_utente }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @gruppi_utente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /gruppi_utenti/1
  # PUT /gruppi_utenti/1.xml
  def update
    @gruppi_utente = GruppiUtente.find(params[:id])

    respond_to do |format|
      if @gruppi_utente.update_attributes(params[:gruppi_utente])
        format.html { redirect_to(@gruppi_utente, :notice => 'Gruppi utente was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @gruppi_utente.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /gruppi_utenti/1
  # DELETE /gruppi_utenti/1.xml
  def destroy
    @gruppi_utente = GruppiUtente.find(params[:id])
    @gruppi_utente.destroy

    respond_to do |format|
      format.html { redirect_to(gruppi_utenti_url) }
      format.xml  { head :ok }
    end
  end
end
