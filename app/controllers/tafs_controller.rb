class TafsController < ApplicationController
  # GET /tafs
  # GET /tafs.json
  def index
    @tafs = Taf.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tafs }
    end
  end

  # GET /tafs/1
  # GET /tafs/1.json
  def show
    @taf = Taf.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @taf }
    end
  end

  # GET /tafs/new
  # GET /tafs/new.json
  def new
    @taf = Taf.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @taf }
    end
  end

  # GET /tafs/1/edit
  def edit
    @taf = Taf.find(params[:id])
  end

  # POST /tafs
  # POST /tafs.json
  def create
    @taf = Taf.new(params[:taf])

    respond_to do |format|
      if @taf.save
        format.html { redirect_to @taf, notice: 'Taf was successfully created.' }
        format.json { render json: @taf, status: :created, location: @taf }
      else
        format.html { render action: "new" }
        format.json { render json: @taf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tafs/1
  # PUT /tafs/1.json
  def update
    @taf = Taf.find(params[:id])

    respond_to do |format|
      if @taf.update_attributes(params[:taf])
        format.html { redirect_to @taf, notice: 'Taf was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @taf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tafs/1
  # DELETE /tafs/1.json
  def destroy
    @taf = Taf.find(params[:id])
    @taf.destroy

    respond_to do |format|
      format.html { redirect_to tafs_url }
      format.json { head :no_content }
    end
  end
end
