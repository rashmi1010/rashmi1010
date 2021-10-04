class DogieController < ApplicationController
  def index
  	@dogs = Dog.all
  end
  def new
  	@dog = Dog.new
  end
	def create 
		#@dog = Dog.new(name:params[:name])
		@dog = Dog.new(dog_params)
	 	@dog.save 
	  redirect_to dogie_index_path
	end
	def show
		@dog = Dog.find(params[:id])
	end
	def edit
		
		@dog = Dog.find(params[:id])
	end
	def update 
		@dog =Dog.find(params[:id])
		#@dog.update(name:params[:dog][:name])
		dog.update(dog_params)
		redirect_to dogie_index_path
	end
	def destroy
		@dog=Dog.find(params[:id])
		@dog.delete
		redirect_to dogie_index_path
	end

	private
		def dog_params
			params.require(:dog).permit(:name)
		end
end