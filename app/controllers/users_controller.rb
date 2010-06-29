class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Successfully created user."
      redirect_to new_user_suggestion_path(@user)
    else
      render :action => 'new'
    end
  end
end
