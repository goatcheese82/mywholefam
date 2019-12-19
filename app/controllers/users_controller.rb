class UsersController < ApplicationController
    before_action :set_users

    def index
        
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create!(user_params)
        render json: @user
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def edit
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        user.update(user_params)
        render json: user
    end

    def destroy
        user = User.find(params[:id])
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
