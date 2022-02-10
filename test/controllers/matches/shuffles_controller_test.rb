require "test_helper"

class Matches::ShufflesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get matches_shuffles_index_url
    assert_response :success
  end
end
