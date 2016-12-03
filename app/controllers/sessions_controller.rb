class SessionsController < ApplicationController
  def new
end


  def create
    user = User.find_by(email: params[:session][:email].downcase) #session params are a nested hash
    if user && user.authenticate(params[:session][:password]) #If the user exists and the password is ok'd by the authenticator
      log_in user
      redirect_to user #rails translates this as:"Go to the user's profile page"
    else
      flash.now[:danger] = "Username/Password don't match"
    render 'new'
    end
  end


  def destroy
    log_out
    redirect_to root_url  ##When using redirect_to, I need to use the helper root_url, NOT root_path 
end


end
