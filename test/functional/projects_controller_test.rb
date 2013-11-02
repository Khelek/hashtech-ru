require 'test_helper'

class ProjectsControllerTest < ActionController::TestCase
  setup do
    @project = create :project
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get show" do
    get :show, id: @project
    assert_response :success
  end
end
