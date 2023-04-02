class CategoriesController < ApplicationController
    # rescue
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # show all categories
    def index
        categories = Category.all
        render json: categories, include: [:categories], status: :ok
    end

    # show individual category with all the food
    def show
        category = Category.find(params[:id])
        render json: category, include: :foods, status: :ok
    end

    private
    # errors
    def render_not_found_response
        render json: {error: "Category not found"}, status: :not_found
    end
end
