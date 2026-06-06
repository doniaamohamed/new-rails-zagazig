class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  # POST /users/create
  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user, notice: "User created successfully"
    else
      render :new, status: :unprocessable_content
    end
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to @user, notice: "User updated successfully"
    else
      render :edit, status: :unprocessable_content
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: "User deleted successfully"
  end

  private

  def user_params
    params.expect(user: [:name, :DOB, :phone_number, :email, :address])
  end

  def set_user
    @user = User.find(params[:id])
  end
end