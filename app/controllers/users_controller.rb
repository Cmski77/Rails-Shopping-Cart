class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      #Having the user "log_in" after creating or registering an account takes out some of the tedium, no need to login after making an account for the first time. 
      log_in @user ##Using the helper method from sessions_helper to log this user in (aka generate session cookie for this user).

      flash[:success] = "Registration Successful!"
      redirect_to @user
      #Validation Success, save
    else
      render 'new' #Validation failure, go back
    end

  end

private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation) #Require the hash to have a user attribute,and permit the fields
  end
end
