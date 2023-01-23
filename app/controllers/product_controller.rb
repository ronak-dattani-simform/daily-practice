class ProductController < ApplicationController
  def index
    # product = Product.create(product_name: "Chair", product_price: 500, description: "A modular chair !")
    # product.save

    @products = Product.all
  end
end
