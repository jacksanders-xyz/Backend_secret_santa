class UsersController < ApplicationController
    def index
        @users = User.all
            render ({
                json: @users,
                include: :group 
            })
    end 
    
    def show 
        @user = Group.find(params[:id])
            render ({
               json: @user,
               include: :group 
            })
    end 

    def create 
        @user = User.create user_params
            if @user.save
                render json: { group: @user},
                status: :created 
            else 
                render json: { error: errors.full_messages }
            end 
    end

    private
    
    def user_params
        params.require(:user).permit( :first_name, :last_name, :email_address, :group_id, :interests, :game_day)
    end

end
