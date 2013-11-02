require 'test_helper'

class PartnersControllerTest < ActionController::TestCase
  setup do
    @partner = create :partner
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @partner
    assert_response :success
  end
end
