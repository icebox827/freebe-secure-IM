class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update]
  def index
    @users = User.all
  end

  def show;end

  def create
    @user = User.create(user_params)

    if @user.save
      flash[:success] = 'User created successfully'
      session[:user_id] = @user.id
      session[:first_name] = @user.first_name
    else
      flash[:alert] = 'Cannot create user'
      render 'new'
    end
  end

  def edit;end 

  def update
    if @user.update(user_params)
      flash[:success] = 'user updated successfully'
      redirect_to chatrooms_path
    else
      flash[:alert] = 'Cannot update user'
      render 'edit'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:email] = nil
    flash[:success] = 'Log out with success'
    redirect_to root_path
  end

  private

  def user_params
    params.permit(:first_name, :last_name, :phone, :email, :password_digest, :date_of_birth, :gender)
  end

  def set_user
    @user = User.find(params[:id])
  end
end
