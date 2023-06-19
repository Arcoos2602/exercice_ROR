# need to modify the model one string en trop : TODOOOOO
class UsersController < ApplicationController
    # GET /users
    def index
        @users = User.all
    end
    # GET /users/:user_id
    def show
        @user = User.find(params[:id])
    end
    def new
        @user = User.new
    end 
    # POST /users
    def create
        @user = User.new(user_params)

        if @user.save
            redirect_to @user
        else
            render :new, status: :unprocessable_entity
        end
    end
    def edit
        @user = User.find(params[:id])
    end
    # PATCH/PUT /users/:user_id
    def update
        @user = User.find(params[:id])

        if @user.update(user_params)
            redirect_to @user
        else
            render :edit, status: :unprocessable_entity
        end
    end
    # DELETE /users/:user_id
    def destroy
        @user = User.find(params[:id])
        @user.destroy

        redirect_to root_path, status: :see_other
    end
    private
    def user_params
      params.require(:user).permit(:email, :first_name, :last_name, :phone)
    end
end
