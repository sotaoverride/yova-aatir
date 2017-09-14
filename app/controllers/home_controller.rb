class HomeController < ApplicationController
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def index
    @products = Product.all
  end
end
