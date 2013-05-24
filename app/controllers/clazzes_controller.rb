class ClazzesController < ApplicationController
  # GET /clazzes
  # GET /clazzes.json
  def index
    @clazzes = Clazz.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @clazzes }
    end
  end

  # GET /clazzes/1
  # GET /clazzes/1.json
  def show
    @clazz = Clazz.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @clazz }
    end
  end

  # GET /clazzes/new
  # GET /clazzes/new.json
  def new
    @clazz = Clazz.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @clazz }
    end
  end

  # GET /clazzes/1/edit
  def edit
    @clazz = Clazz.find(params[:id])
  end

  # POST /clazzes
  # POST /clazzes.json
  def create
    @clazz = Clazz.new(params[:clazz])

    respond_to do |format|
      if @clazz.save
        format.html { redirect_to @clazz, notice: 'Clazz was successfully created.' }
        format.json { render json: @clazz, status: :created, location: @clazz }
      else
        format.html { render action: "new" }
        format.json { render json: @clazz.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /clazzes/1
  # PUT /clazzes/1.json
  def update
    @clazz = Clazz.find(params[:id])

    respond_to do |format|
      if @clazz.update_attributes(params[:clazz])
        format.html { redirect_to @clazz, notice: 'Clazz was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @clazz.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clazzes/1
  # DELETE /clazzes/1.json
  def destroy
    @clazz = Clazz.find(params[:id])
    @clazz.destroy

    respond_to do |format|
      format.html { redirect_to clazzes_url }
      format.json { head :no_content }
    end
  end
end
