
class SessionsController < ApplicationController

  def new
  end

  def create
    if session[:name] = params[:name]
      redirect_to '/'
    elsif session[:name] == nil && session[:name] == []
      redirect_to 'application#hello'
    end
  end

  def destroy
    session.delete :name
  end

end
