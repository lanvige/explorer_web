# coding: utf-8

class CoursewaresController < ApplicationController
  # GET /coursewares
  # GET /coursewares.json
  def index
    @coursewares = Courseware.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coursewares }
    end
  end

  # GET /coursewares/1
  # GET /coursewares/1.json
  def show
    @courseware = Courseware.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @courseware }
    end
  end

  # GET /coursewares/new
  # GET /coursewares/new.json
  def new
    @courseware = Courseware.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @courseware }
    end
  end

  # GET /coursewares/1/edit
  def edit
    @courseware = Courseware.find(params[:id])
  end

  # POST /coursewares
  # POST /coursewares.json
  def create
    @courseware = Courseware.new(params[:courseware])

    respond_to do |format|
      if @courseware.save
        format.html { redirect_to @courseware, notice: 'Courseware was successfully created.' }
        format.json { render json: @courseware, status: :created, location: @courseware }
      else
        format.html { render action: "new" }
        format.json { render json: @courseware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coursewares/1
  # PUT /coursewares/1.json
  def update
    @courseware = Courseware.find(params[:id])

    respond_to do |format|
      if @courseware.update_attributes(params[:courseware])
        format.html { redirect_to @courseware, notice: 'Courseware was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @courseware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coursewares/1
  # DELETE /coursewares/1.json
  def destroy
    @courseware = Courseware.find(params[:id])
    @courseware.destroy

    respond_to do |format|
      format.html { redirect_to coursewares_url }
      format.json { head :no_content }
    end
  end
end
