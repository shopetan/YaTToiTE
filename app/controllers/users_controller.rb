class UsersController < ApplicationController
  
    def index
  end

  def show
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
    redirect_to :controller => "contents" , :action => "new"
    #redirect_to new_content_path
    else
      render new
    end
  end
  
  private
  def user_params
    params.require(:user).permit(:Name, :Number)
  end
  
end

