class SessionsController < ApplicationController

    def new
    end

    def create
      if params[:name] && params[:name] != nil && params[:name] != ""
        session[:name] = params[:name]
        redirect_to '/show'
      else 
        redirect_to '/login'
      end
    end

    def destroy
      if session[:name]
        session.delete :name
      end

      redirect_to '/login'
    end

end 