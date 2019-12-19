class UsersController < ApplicationController
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
end
