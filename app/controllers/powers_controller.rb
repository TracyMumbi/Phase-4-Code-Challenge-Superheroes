class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :validation_errors
    def index
        power = Power.all
        render json: power, status: :ok
    end

    def show
        power = Power.find_by(id: params[:id])
        if power
            render json: power, status: :ok
        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end
    def update
        power = Power.find_by(id: params[:id])
        if power
            power.update!(power_params)
            render json: power, status: :ok
        else
            render json: {error: "Power not found"}, status: :not_found
        end
    end
    private
    def power_params
        params.permit(:name, :description)
    end

    def validation_errors(invalid)
        render json: { error: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
