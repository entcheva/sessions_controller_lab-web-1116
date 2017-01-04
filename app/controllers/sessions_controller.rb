class SessionsController < ApplicationController

  def index
  end

  def new
    # sign in
  end

  def create
    # submit sign in credentials
    unless params[:name].blank?
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to login_path
    end
  end

  def destroy
    session[:name] = nil
    redirect_to login_path
  end

end
