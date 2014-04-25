require_dependency "escambo/application_controller"

module Escambo
  class HomeController < ApplicationController
    def index
      @products = Product.all
    end
  end
end
