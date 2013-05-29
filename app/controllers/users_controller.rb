# coding: utf-8
# https://github.com/plataformatec/devise/wiki/How-To:-Manage-users-through-a-CRUD-interface

class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  	@user = User.new

    respond_to do |format|
      format.html
	end
  end

  def create
  	@user = User.new(params[:user])

    user_params = params[:user]
    logger.info 

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

end
