require 'test_helper'

class IdeapostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ideapost = ideaposts(:one)
  end

  test "should get index" do
    get ideaposts_url
    assert_response :success
  end

  test "should get new" do
    get new_ideapost_url
    assert_response :success
  end

  test "should create ideapost" do
    assert_difference('Ideapost.count') do
      post ideaposts_url, params: { ideapost: { content: @ideapost.content, user_id: @ideapost.user_id } }
    end

    assert_redirected_to ideapost_url(Ideapost.last)
  end

  test "should show ideapost" do
    get ideapost_url(@ideapost)
    assert_response :success
  end

  test "should get edit" do
    get edit_ideapost_url(@ideapost)
    assert_response :success
  end

  test "should update ideapost" do
    patch ideapost_url(@ideapost), params: { ideapost: { content: @ideapost.content, user_id: @ideapost.user_id } }
    assert_redirected_to ideapost_url(@ideapost)
  end

  test "should destroy ideapost" do
    assert_difference('Ideapost.count', -1) do
      delete ideapost_url(@ideapost)
    end

    assert_redirected_to ideaposts_url
  end
end
