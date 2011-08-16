class UsersController < ApplicationController
  def new
    @title = "Sign Up Bamberklart"
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to @user
      flash[:success] = "Welcome to the Sample App!"
    else
      @title = "Sign Up AGAIN"
      render 'new'
    end
  end

end
