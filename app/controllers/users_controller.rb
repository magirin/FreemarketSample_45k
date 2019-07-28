class UsersController < ApplicationController

  def index
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(current_user.id)
  end

  def show
  end

  def update
  end

  def destroy
  end

  def identification
    @user = User.find(current_user.id)
  end

  def profile
    @user = User.find(current_user.id)
  end

end
