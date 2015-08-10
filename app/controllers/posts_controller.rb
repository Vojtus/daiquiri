class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end



  def edit
    @post = Post.find(params[:id])
  end

  def update
    redirect_to root_path unless logged_in?
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully edited."
      redirect_to @post
    else
      flash[:notice] = "Wrong post params!"
      render 'edit'
    end
  end

  def destroy
    redirect_to root_path unless logged_in?
    Post.find(params[:id]).destroy
    flash[:notice] = "Post succesfully deleted."
    redirect_to '/administrace'
  end

  private

  def post_params
    params.require(:post).permit(:nazev, :image, :remote_image_url,
                                  :text, :datum, :tags)
  end
end
