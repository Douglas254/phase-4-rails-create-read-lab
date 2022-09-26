class PlantsController < ApplicationController
    wrap_parameters format: []

    def index
        plants = Plant.all
        render json: plants, status: :ok
    end

    def show
        plant = Plant.find_by(id: params[:id])
        render json:plant, status: :ok
    end

    def create
        plant = Plant.create(params_plants)
        render json:plant, status: :created
    end

    private

    def params_plants
        params.permit(:name,:image,:price)
    end
end
