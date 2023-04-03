class CartsController < ApplicationController
    # before_action :authorize, only: [:index, :show]
    # rescue
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        carts = Cart.all
        render json: carts, include: :carts, status: :ok
    end
    # SHOW /carts/{id} => include orders as children
    def show
        cart = find_cart
        render json: cart, include: :orders, status: :ok
    end
    
    #  POST carts

    def create
        cart = Cart.create(cart_params)
        
        if cart.save
          render json: cart, status: :created
        else
          render json: { errors: cart.errors.full_messages }, status: :unprocessable_entity
        end
      end
      
         

    private
    def cart_params
        params.require(:cart).permit(:quantity, :price)
      end
    # strong params
    def find_cart
        Cart.find(params[:id])
    end

    # error not_found
    def render_not_found_response
        render json: {error: "Cart not found"}, status: :not_found
    end
end
