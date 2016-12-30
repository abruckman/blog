class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(user_params)
    @user.save
    log_in(@user)
    redirect_to '/'

  end

  private
    def user_params
      params.require(:user).permit(:username, :password)
    end
end
