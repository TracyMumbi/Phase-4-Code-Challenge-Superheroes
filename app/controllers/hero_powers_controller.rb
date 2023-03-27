class HeroPowersController < ApplicationController
    def index
        heropowers = HeroPower.all
        render json: heropowers
    end
    def create
        heropowers = HeroPower.create!(heropowers_params)
        if heropowers
            render json: heropowers, status: :created
        else
            render json: {error: "Validation errors"}
    end
end
    private
    def heropowers_params
        params.permit(:strength, :power_id, :hero_id)
    end
end
