class SessionsController < ApplicationController
  def new
  end

  def create

    @user = User.find_by(session_params[:username])
    if User.password = session_prarams[:password]
      log_in(@user)
    else
      "sessions#new"
    end
  end

  def destroy
    log_out
    redirect_to '/'
  end

  private
    def session_params
      params.require(:session).permit(:username, :password)
    end
end
