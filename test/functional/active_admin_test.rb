require 'test_helper'
require 'minitest/autorun'

class ActiveAdminTest < ActionController::TestCase
  setup do
    @admin = FactoryGirl.create :admin_user 
    get :new_admin_user_session_path
    fill_in 'admin_user_email', :with => admin.email
    fill_in 'admin_user_password', :with => admin.password
    click_button "Log In"
  end
  
  test "should get index" do
    get :admin_root
    assert_response :success
  end
  
end
