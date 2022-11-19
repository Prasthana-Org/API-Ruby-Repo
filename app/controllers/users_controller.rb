class UsersController < ApplicationController

  def about
    render plain: "About Users"
  end

  def index
    @user=User.all
    render json: @user
  end

  def create
   @user =User.new(user_params)
   if @user.save
     render json: @user, status: :ok
   else
    render json: {errors: "@user is not created"}
   end
  end

  def new
    @user=User.new()
  end

  def show
    @user = User.find(params[:id])
    render json: @user
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    @user.save
    render json: @user
  end

    def destroy
      @user=User.find(params[:id])
      @user.destroy
    end

    private

    def user_params
      params.require(:user).permit(:username, :email, :password_digest)
    end
  
end


# {
#   "user": {
#     "username": "klewjktlwe", 
#     "email": "kwejlkew@gmail.com", 
#     "password_digest": "lkwejltkjwel"
#   }
# }