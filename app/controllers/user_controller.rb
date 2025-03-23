class UserController < ApplicationController
  before_action :require_user, only: [:show]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Hello #{@user[:username]} , Welcome to Message Me."
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @users = User.page(params[:page]).per(7) # Paginate users (5 per page)
  end

  private

  def user_params
    params.require(:session).permit(:username, :password)
  end
end
