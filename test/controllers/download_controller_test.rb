require 'test_helper'

class DownloadControllerTest < ActionController::TestCase
  test "should get pdf" do
    get :pdf
    assert_response :success
  end

end
