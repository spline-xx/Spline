class DikshasController < ApplicationController
  # GET /dikshas
  # GET /dikshas.xml
  def index
    @dikshas = Diksha.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @dikshas }
    end
  end

  # GET /dikshas/1
  # GET /dikshas/1.xml
  def show
    @diksha = Diksha.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @diksha }
    end
  end

  # GET /dikshas/new
  # GET /dikshas/new.xml
  def new
    @diksha = Diksha.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @diksha }
    end
  end

  # GET /dikshas/1/edit
  def edit
    @diksha = Diksha.find(params[:id])
  end

  # POST /dikshas
  # POST /dikshas.xml
  def create
    @diksha = Diksha.new(params[:diksha])

    respond_to do |format|
      if @diksha.save
        format.html { redirect_to(@diksha, :notice => 'Diksha was successfully created.') }
        format.xml  { render :xml => @diksha, :status => :created, :location => @diksha }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @diksha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /dikshas/1
  # PUT /dikshas/1.xml
  def update
    @diksha = Diksha.find(params[:id])

    respond_to do |format|
      if @diksha.update_attributes(params[:diksha])
        format.html { redirect_to(@diksha, :notice => 'Diksha was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @diksha.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /dikshas/1
  # DELETE /dikshas/1.xml
  def new_fn
  	@diksha= Diksha.new(params[:diksha])
  	respond_to do |format|
      format.html { redirect_to(dikshas_url) }
      format.xml  { head :ok }
      end	
  end
  def destroy
    @diksha = Diksha.find(params[:id])
    @diksha.destroy

    respond_to do |format|
      format.html { redirect_to(dikshas_url) }
      format.xml  { head :ok }
    end
  end
end
