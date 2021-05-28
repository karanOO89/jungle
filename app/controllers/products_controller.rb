class ProductsController < ApplicationController
  
  http_basic_authenticate_with name: ENV['username'], password: ENV['password']


  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
  end

end

# class PostsController < ApplicationController

#   def index
#     render plain: "Everyone can see me!"
#   end

#   def edit
#     render plain: "I'm only accessible if you know the password"
#   end
# end