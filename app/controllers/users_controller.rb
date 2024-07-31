class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User created successfully."
      redirect_to user_path(@user)
    else
    end
  end

  def update
    if @article.update(user_params)
      flash[:notice] = "User updated successfully."
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  def destroy
    if @article.destroy!
      flash[:notice] = "Article deleted successfully."
    else
      flash[:error] = "somthing went wrong !!!"
    end
  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:username, :bio)
    end
end
