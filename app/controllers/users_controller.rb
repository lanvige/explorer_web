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
    logger.info '========================='
    logger.info params[:user][:realname]

    # params[:user].merge(:password => 'sss', :password_confirmation => "sss")
  	@user = User.new(params[:user].merge(:password => 'sss', :password_confirmation => "sss"))

    respond_to do |format|
      if @user.save
        set_flash_message :notice, :signed_up if is_navigational_format?
        # format.html { redirect_to @user, notice: 'User was successfully created.' }
      else
        respond_with resource
        format.html { render action: "new" }
      end
    end
  end

end
