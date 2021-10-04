class PhoneNumberController < ApplicationController
	def index
		@phonenumbers = PhoneNumber.all
	end
	def new
		
		 @user = User.find(params[:id])
  end
  def create 
  	#debugger
  	@user = User.find(params[:phone_number][:user_id])

  	@phonenumber = @user.build_phone_number(number: params[:phone_number][:number],user_id: params[:phone_number][:user_id])
  	@phonenumber.save
  	redirect_to new_users_path
  end 
  def show
  	@phonenumber = PhoneNumber.find (params[:id])
  end
end