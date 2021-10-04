class UsersController < ApplicationController
	def index
  	@users = User.all
  end
  def new
  	@user = User.new
  end
  def create 
  	
  	@user = User.new(name: params[:user][:name],dropdown: params[:user][:dropdown],checkbox: params[:user][:checkbox])
    #debugger
  	@user.save
    #debugger
    redirect_to users_path
  end
  def show
  	@user = User.find (params[:id])
  end
end

