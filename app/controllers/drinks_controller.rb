class DrinksController < ApplicationController

  def new
  end

  def create
  end

  def show
    @drink = Drink.find(params[:id])
    @related = Drink.where( zaklad: @drink.zaklad ).sample(4)
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
