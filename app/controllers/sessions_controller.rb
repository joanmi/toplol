class SessionsController < ApplicationController
  def create
    omniauth_hash =  request.env["omniauth.auth"]
    session[:user_id] = User.find_or_create_with_omniauth_hash(omniauth_hash).id
    redirect_to root_path
  end
                                                              
  def destroy
    redirect_to root_path
  end 
end
