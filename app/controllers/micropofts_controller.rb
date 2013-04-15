class MicropoftsController < ApplicationController
  # GET /micropofts
  # GET /micropofts.json
  def index
    @micropofts = Micropoft.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @micropofts }
    end
  end

  # GET /micropofts/1
  # GET /micropofts/1.json
  def show
    @micropoft = Micropoft.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @micropoft }
    end
  end

  # GET /micropofts/new
  # GET /micropofts/new.json
  def new
    @micropoft = Micropoft.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @micropoft }
    end
  end

  # GET /micropofts/1/edit
  def edit
    @micropoft = Micropoft.find(params[:id])
  end

  # POST /micropofts
  # POST /micropofts.json
  def create
    @micropoft = Micropoft.new(params[:micropoft])

    respond_to do |format|
      if @micropoft.save
        format.html { redirect_to @micropoft, notice: 'Micropoft was successfully created.' }
        format.json { render json: @micropoft, status: :created, location: @micropoft }
      else
        format.html { render action: "new" }
        format.json { render json: @micropoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /micropofts/1
  # PUT /micropofts/1.json
  def update
    @micropoft = Micropoft.find(params[:id])

    respond_to do |format|
      if @micropoft.update_attributes(params[:micropoft])
        format.html { redirect_to @micropoft, notice: 'Micropoft was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @micropoft.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micropofts/1
  # DELETE /micropofts/1.json
  def destroy
    @micropoft = Micropoft.find(params[:id])
    @micropoft.destroy

    respond_to do |format|
      format.html { redirect_to micropofts_url }
      format.json { head :no_content }
    end
  end
end
