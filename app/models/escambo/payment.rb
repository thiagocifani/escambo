module Escambo
  class Payment < ActiveRecord::Base
    belongs_to :order
  end
end
