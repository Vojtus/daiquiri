class DrinksController < ApplicationController

  def index
    redirect_to root_path unless logged_in?
    @drinks =  Drink.all
    @drink = Drink.new
  end

  def new
  end

  def create
  end

  def show
    @drink = Drink.find(params[:id])
    @related = Drink.where( zaklad: @drink.zaklad ).sample(4)
  end

  def edit
    redirect_to root_path unless logged_in?
  end

  def update
  end

  def destroy
  end

  def edit_redirect
    @drink = Drink.find_by(id: params[:drink][:id])
    redirect_to edit_drink_path(@drink)
    end
end
