require 'test_helper'

class Admin::ProjectsControllerTest < ActionController::TestCase
  setup do
    # Creates a reference to the admin controller
    @controller = ::Admin::ProjectsController.new 

    # Prevents checking for a valid user session (pretends we're logged in)
    @controller.stubs(:authenticate_active_admin_user)
  end

  test "should get index" do 
    get :index
    assert_response :success
    assert_template :index
    #assert_template layout: "admin/projects/_index"
  end

  test "should get new" do 
    get :new
    assert_response :success
  end

end
