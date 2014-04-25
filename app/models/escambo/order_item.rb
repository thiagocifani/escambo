module Escambo
  class OrderItem < ActiveRecord::Base
    belongs_to :product
    belongs_to :order
  end
end
