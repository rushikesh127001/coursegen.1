require 'test_helper'

class Course::StepsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get course_steps_show_url
    assert_response :success
  end

  test "should get update" do
    get course_steps_update_url
    assert_response :success
  end

end
