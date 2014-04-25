module Escambo
  class User < ActiveRecord::Base
    has_many :orders
    has_one :address
  end
end
