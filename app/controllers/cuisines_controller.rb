class CuisinesController < ApplicationController
  def show
    @cuisine = Cuisine.find(params[:id])
  end

  def new
    @cuisine = Cuisine.new
  end

  def create
    @cuisine = Cuisine.new(params.require(:cuisine).permit(:name))
    if @cuisine.save
      flash[:success] = "Cadastrada com sucesso"
      redirect_to @cuisine
    else
      render :new
    end
  end
end
