require 'test_helper'

class AdminUserControllerTest < ActionController::TestCase
  setup do
    # Creates a reference to the admin controller
    @controller = ::Admin::AdminUsersController.new 

    # Prevents checking for a valid user session (pretends we're logged in)
    @controller.stubs(:authenticate_active_admin_user)
  end

  test "should get index" do 
    get :index
    assert_response :success
  end
end
