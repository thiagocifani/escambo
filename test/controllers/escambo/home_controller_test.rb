require 'test_helper'

module Escambo
  class HomeControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end

  end
end
