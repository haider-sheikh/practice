class HomeController < ApplicationController

  def index
    @name = 'Haider'
  end

  def new
    @user = User.new
    respond_to do |format|
      format.js
    end
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :email))
    respond_to do |format|
      @result = @user.save
      format.js
    end
  end

  def all_users
    @users = User.all
    respond_to do |format|
      format.js
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
