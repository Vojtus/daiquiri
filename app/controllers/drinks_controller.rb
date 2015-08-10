class DrinksController < ApplicationController

  def index
    redirect_to root_path unless logged_in?
    @drinks =  Drink.all
    @drink = Drink.new
    @posts = Post.all
    @post = Post.new
  end

  def new
    @drink = Drink.new
  end

  def create

  end

  def show
    @drink = Drink.find(params[:id])
    @related = Drink.where( zaklad: @drink.zaklad ).sample(4)
  end

  def edit
    redirect_to root_path unless logged_in?
    @drink = Drink.find_by(id: params[:id])
  end

  def update
    redirect_to root_path unless logged_in?
    @drink = Drink.find(params[:id])
    if @drink.update_attributes(drink_params)
      flash[:notice] = "Successfuly updated"
      redirect_to @drink
    else
      flash[:notice].now = "something is wrong"
      render 'edit'
    end

  end

  def destroy
    redirect_to root_path unless logged_in?
    Drink.find(params[:id]).destroy
    flash[:notice] = "Drink succesfully deleted."
    redirect_to '/administrace'
  end

  def edit_redirect
    # Edit drinks redirect

    if params[:commit] == 'edit drink'
      @drink = Drink.find_by(id: params[:drink][:id])
      redirect_to edit_drink_path(@drink)


    # Edit posts redirect
    elsif params[:commit] == 'edit post'
      @post = Post.find_by(id: params[:post][:id])
      redirect_to edit_post_path(@post)


    # Create drink redirect
    elsif params[:commit] == 'Vytvořit drink!'
      @drink = Drink.new(drink_params)
      if logged_in? && @drink.save
        flash[:notice] = "Drink successfully created."
        redirect_to '/administrace'
      else
        flash[:notice] = "Drinks params not correct"
        render 'new'
      end
    elsif params[:commit] == 'Vytvořit post!'
      @post = Post.new(post_params)
      if logged_in? && @post.save
        flash[:notice] = "Post successfully created."
        redirect_to @post
      else
        unless logged_in?
          flash[:notice] = "You are not logged in"
          redirect_to '/login'
        end
        flash[:notice] = "Wrong post params!"
        render 'new'
      end
    end

  end

  private

  def drink_params
    params.require(:drink).permit(:nazev, :autor, :datum, :misto, :zaklad, :text1,
                                  :text2, :text3, :text4, :image, :image2, :image3,
                                  :remote_image_url, :remote_image2_url, :remote_image3_url)
  end

  def post_params
    params.require(:post).permit(:nazev, :image, :remote_image_url,
                                  :text, :datum, :tags)
  end
end
