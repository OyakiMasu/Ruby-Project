class FoodsController < ApplicationController
# rescue
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # get /foods
    def index 
        foods = Food.all
        render json: foods, include: :foods, status: :ok
    end
    # SHOW /foods/{id}
    def show
        food = Food.find(params[:id])
        render json: food, include: :foods, status: :ok
    end

    private
    # error
    def render_not_found_response
        render json: {error: "Food Not found"}, status: :not_found
    end
end
