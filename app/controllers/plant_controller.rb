class PlantController < ApplicationController
    def index
        plant = Plant.all
            render json: plant
    end

    def show 
        plant = Plant.find_by(id: params[:id])
        if plant
            render json: plant
        else
            render json {error: "Plnat not found"}
        end
    end

    def create
        plant = Plant.create(params)
        render json: bird, status: :created
    end


end