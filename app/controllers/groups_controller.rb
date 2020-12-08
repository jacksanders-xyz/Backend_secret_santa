class GroupsController < ApplicationController
    def index
        @groups = Group.all
            render ({
                json: @groups,
                include: :users 
            })
    end 
    
    def show 
        @group = Group.find(params[:id])
            render ({
               json: @group,
               include: :users 
            })
    end 

    def create 
        @group = Group.create group_params
            if @group.save
                render json: { group: @group},
                status: :created 
            else 
                render json: { error: errors.full_messages }
            end 
    end

    private
    
    def group_params
        params.require(:group).permit( :name, :password, :draw_date, :game_day)
    end

end
