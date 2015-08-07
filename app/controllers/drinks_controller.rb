class DrinksController < ApplicationController

  def index
    redirect_to root_path unless logged_in?
    @drinks =  Drink.all
    @drink = Drink.new
    @posts = Post.all
    @post = Post.new
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
    if params[:commit] == 'edit drink'
      @drink = Drink.find_by(id: params[:drink][:id])
      redirect_to edit_drink_path(@drink)
    elsif params[:commit] == 'edit post'
      @post = Post.find_by(id: params[:post][:id])
      redirect_to edit_post_path(@post)
    end
  end
end
