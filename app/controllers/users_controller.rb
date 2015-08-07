class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if logged_in? && @user.save
      flash[:success] = "User #{@user.jmeno} created!"
      redirect_to root_path
    else
      flash[:danger] = "Ooops"
      redirect_to root_path
    end
  end

  def edit
  end

  def update

  end

  private

    def user_params
      params.require(:user).permit( :jmeno, :email, :password,
                                    :password_confirmation)
    end

end
