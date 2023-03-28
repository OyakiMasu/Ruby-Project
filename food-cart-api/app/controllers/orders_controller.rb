class OrdersController < ApplicationController
    def index
        orders = Order.all
        render json: orders
    end
#    POST /orders => add to cart
def create
    order = Order.create!(order_params)
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
    order = Order.find(params[:id])
    order.destroy
    head :no_content
end

# private
# strong params
def order_params
    params.permit(:food_id,:quantity,:price,:cart_id, :user_id)
end
end
