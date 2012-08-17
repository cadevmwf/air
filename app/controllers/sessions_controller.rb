class SessionsController < ApplicationController
  def new
  end

  # {"utf8"=>"✓", "authenticity_token"=>"gCSVMapw2cC0K4E2d9XIVMnik/AuCCws7bCFR2C/Khg=", "email"=>"jeff@codeacademy.org", "password"=>"[FILTERED]", "commit"=>"Let Me In!"}
  def create
    user = User.find_by_email(params[:email])
    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to user_url(user), notice: "Welcome Back!"
      else
        redirect_to root_url, notice: "Wrong password!"
      end
    else
      redirect_to root_url, notice: "Wrong email address!"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end
end

