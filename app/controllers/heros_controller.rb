class HerosController < ApplicationController
    def index
        hero = Hero.all
        render json: hero, status: :ok
    end

    def show
        hero = Hero.find_by(id: params[:id])
        if hero
            render json: hero, status: :ok
        else
            render json: {error: "Hero not found"}, status: 404
        end
    end
end
