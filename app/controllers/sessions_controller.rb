class SessionsController < ApplicationController
  def new
  end

  def create
    if(params[:name]==nil || params[:name]=="")
      redirect_to '/login'
      return
    end
    if(params[:name])
      session[:name]=params[:name]
    end
    redirect_to '/'
  end

  def destroy
    if(session[:name])
      session.delete :name
    end
    redirect_to '/'
  end
end
