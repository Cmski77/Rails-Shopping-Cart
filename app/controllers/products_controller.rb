class ProductsController < ApplicationController
    def index
      @products = Product.all
      @order_item = current_order.order_items.new
    end

    def search2
      name = params[:search] + '%'
      @products = Product.where(['name LIKE ?', name])
    end


  end
