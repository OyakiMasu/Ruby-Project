class UsersController < ApplicationController
    # rescue
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    # get all users /users
    def index
        users = User.all
        render json: users, include: :users
    end

    private
    # errors
    def render_not_found_response
        render json: {errors: "User not found"}, status: :not_found
    end
end
