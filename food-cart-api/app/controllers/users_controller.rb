class UsersController < ApplicationController
    before_action :authorize, only: [:show, :update, :destroy]
<<<<<<< HEAD
  
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
  
=======

# Handle ActiveRecord Not Found exception
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # get all users /users
>>>>>>> 533a3fdd5a68b483fd4dd8fd2b9d0904eb2bf8ec
    def index
      users = User.all
      render json: users, include: :posts
    end
  
    def show
      user = User.find(params[:id])
      render json: user, status: :ok
    end
  
    def create
      user = User.new(user_params)
      if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
      else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
      end
    end
  
    def update
      user = User.find(params[:id])
      if user
        user.update(user_params)
        render json: user, status: :ok
      else
        render json: { error: "User not found" }, status: :not_found
      end
    end
  
    def destroy
      user = User.find(params[:id])
      if user
        user.destroy
        head :no_content
      else
        render json: { error: "User not found" }, status: :not_found
      end
    end
  
    def change_password
      user = User.find(params[:id])
      if user && user.authenticate(params[:current_password])
        user.update(password: params[:new_password])
        render json: { message: 'Password updated successfully' }, status: :ok
      else
        render json: { error: 'Invalid current password' }, status: :unprocessable_entity
      end
    end
  
    private
  
    def render_not_found_response
      render json: { error: "User not found" }, status: :not_found
    end
  
    def user_params
      params.permit(:username, :email, :password)
            .merge(email: params[:email]&.downcase)
    end
  end
  