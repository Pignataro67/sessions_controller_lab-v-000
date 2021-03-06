class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    elsif
      session[:name] = params[:name]
      redirect_to '/'
    elsif logged_in?
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name

    redirect_to '/sessions/new'
  end
end
