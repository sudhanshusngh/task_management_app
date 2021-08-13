class SessionsController < ApplicationController
  def welcome

  end

  def new
  end

  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    self.current_user = @user
    redirect_to '/'
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

  protected

  def auth_hash
    request.env['omniauth.auth']
  end
end
