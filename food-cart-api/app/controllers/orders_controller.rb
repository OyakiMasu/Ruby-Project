class OrdersController < ApplicationController
    before_action :authorize, only: [:show]
    # rescue 
rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity
    def index
        orders = Order.all
        render json: orders, include: :orders
    end
    # show /orders/{id}
    def show
        order = Order.find(params[:id])
        render json: order
    end
#    POST /orders => add to cart
def create
    # Find the Cart record to add the item to
    cart = Cart.find(params[:cart_id])
        # Find the Food record that was selected
    food = Food.find(params[:food_id])
        # Create a new Order record that belongs to both the Cart and Food
    order = Order.create!(cart: cart, food: food, quantity: params[:quantity], price: food.price, user_id: params[:user_id])
    render json: order, status: :created 
end
    
# UPDATE - PATCH /orders/{id}
def update
    order = Order.find(params[:id])
    order.update(order_params)
    render json: order
end
# DESTROY - DELETE /orders/{id}
def destroy
    cart = Cart.find(params[:cart_id])
    order = Order.find(params[:id])
    order.destroy
    head :no_content
end

# private
# strong params
def order_params
    params.permit(:food_id,:quantity,:price,:cart_id, :user_id)
end
def render_not_found_response
    render json: {error: "Order not found"}, status: :not_found
end
def render_unprocessable_entity
    render json: {error: "Validation errors"}, status: :unprocessable_entity
end
end
