
class SessionsController < ApplicationController

  def new
  end

  def create
    # byebug  
    if session[:name] = params[:name]
      redirect_to '/'
    elsif session[:name] == nil && session[:name] == []
      redirect_to 'sessions#new'
    end
  end

  def destroy
    session.delete :name
  end

end
