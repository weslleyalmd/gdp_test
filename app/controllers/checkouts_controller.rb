class CheckoutsController < ApplicationController

  def index
    @products = Product.all
    @clients = Client.all
  end

  def total
    byebug
  end

end