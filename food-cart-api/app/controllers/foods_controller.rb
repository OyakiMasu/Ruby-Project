class FoodsController < ApplicationController

    # get /foods
    def index 
        foods = Food.all
        render json: foods, include: :foods, status: :ok
    end
    # SHOW /foods/{id}
    def show
        food = Food.find(params[:id])
        render json: food, status: :ok
    end
end
