require 'test_helper'

class SongControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get song_index_url
    assert_response :success
  end

  test "should get show" do
    get song_show_url
    assert_response :success
  end

  test "should get new" do
    get song_new_url
    assert_response :success
  end

end
