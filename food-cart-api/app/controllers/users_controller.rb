class UsersController < ApplicationController
 # rescue

rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # get all users /users
    def index
        users = User.all
        render json: users, include: :users
    end

    # GET  /users/:id
    def show
        user = User.find(params[:id])
        render json: user
    end

    #POST /users
    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: :created
        else
            render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
        end
    end

    private
    # errors
    def render_not_found_response
        render json: {errors: "User not found"}, status: :not_found
    end
    
    def user_params
        params.permit(:username, :email, :password)
    end

end
