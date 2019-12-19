class UsersController < ApplicationController
    before_action :set_users
    
    def index
    end

    def new
    end

    def create
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(
            :first_name,
            :last_name,
            :email,
            :phone_number,
            :birth_date,
            :location,
            :birthplace
        )
    end

    def set_users
        if !User.all.empty?
            @users = User.all
        else
            @users = []
        end
    end

    def set_user
        @user = User.find(params[:id])
    end
end
