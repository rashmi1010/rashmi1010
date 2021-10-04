class ColorController < ApplicationController
  def index
  	@colors = Color.all
  end

  def new
  	@color = Color.new
  end
  def create
		#@color = Color.new(colorname: params[:color],age: params[:age])
    @color = Color.new(color_params)	
    @color.save
  	redirect_to color_index_path
	end

  private 
    def color_params
      params.require(:color).permit(:colorname ,:age)
    end
end
