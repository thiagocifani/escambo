module Escambo
  class Payment < ActiveRecord::Base
    belongs_to :order
    has_one :payment_type
  end
end
