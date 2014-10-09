class SessionsController < ApplicationController
  def create
    auth = request.env["omniauth.auth"]
    criteria = User.where(:provider => auth["provider"], :uid => auth["uid"])
    #user = criteria.select || User.create_with_omniauth(auth)
    user = User.create_with_omniauth(auth)
    session[:user_id] = user.uid
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, :notice => "Signed out!"
  end
end
