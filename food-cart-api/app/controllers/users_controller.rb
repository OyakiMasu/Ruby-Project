class UsersController < ApplicationController
    # get all users /users
    def index
        users = User.all
        render json: users
    end
end
