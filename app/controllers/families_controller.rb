class FamiliesController < ApplicationController
    before_action :set_families

    def index
        
    end

    def new
        @family = Family.new
    end

    def create
        @family = Family.create!(family_params)
        render json: @family
    end

    def show
        family = Family.find(params[:id])
        render json: family
    end

    def edit
        family = Family.find(params[:id])
    end

    def update
        family = Family.find(params[:id])
        family.update(family_params)
        render json: family
    end

    def destroy
        family = Family.find(params[:id])
    end

    private

    def family_params
        params.require(:family).permit(
            :last_name
        )
    end

    def set_families
        if !Family.all.empty?
            @families = Family.all
        else
            @families = []
        end
    end

    def set_family
        @family = Family.find(params[:id])
    end
end
