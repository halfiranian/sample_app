class UsersController < ApplicationController
  def new
    @title = "gooboodge"
  end
  def show
    @user = User.find(params[:id])
    @title = @user.name
  end

end
