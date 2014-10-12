class UsersController < ApplicationController

  def index
    redirect_to root_path
  end

	def new
		@user = User.new

	end

  def create
    @user = User.new(params.require(:user).permit(:username, :email, :password))
    if @user.save
      flash[:notice] = "Signed up!"
      session[:user_id] = @user.id
      redirect_to root_url
    else
      render "new"
    end
  end

  def show
    @user = User.find(params[:id])
    @question = Question.all

  end


end