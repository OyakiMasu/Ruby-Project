class UsersController < ApplicationController
    # get all users /users
    def index
        users = User.all
        render json: users, include: :users
    end
end
