class UsersController < ApplicationController
  def index
    @users = User.all
    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])
    @photos = @user.photos

    if current_user !=nil
   render("users/show.html.erb")
 else redirect_to("users/index.html.erb")
   end
  end


  def likes
    @likes = current_user.likes
      if current_user !=nil
      render("users/likes.html.erb")
    else redirect_to("users/index.html.erb")
      end
    end
end
