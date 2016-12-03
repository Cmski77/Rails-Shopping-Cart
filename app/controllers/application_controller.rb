class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    helper_method :current_order
  include SessionsHelper


  def clear
    @order = current_order
    @order_items = @order.order_items.all
    @order_items.each do |o|
      o.destroy
    #
    # Order_item.find_each do |o|
    #   o.destroy
    end
  end

    def current_order
      if !session[:order_id].nil?
        Order.find(session[:order_id])
      else
        Order.new
      end
    end
  end
