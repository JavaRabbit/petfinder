class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(subject_params)
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Thank you for signing up"
      redirect_to root_path
    else
      render "new"
    end
  end

  def show
    @user = User.find_by id: params[:id]
    if @user == nil
      redirect_to root_path
    end
  end

  private

  def subject_params
    params.require(:user).permit(:email, :password, :password_digest)
  end
end
