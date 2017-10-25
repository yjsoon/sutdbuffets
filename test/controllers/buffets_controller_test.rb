require 'test_helper'

class BuffetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @buffet = buffets(:one)
  end

  test "should get index" do
    get buffets_url
    assert_response :success
  end

  test "should get new" do
    get new_buffet_url
    assert_response :success
  end

  test "should create buffet" do
    assert_difference('Buffet.count') do
      post buffets_url, params: { buffet: { title: @buffet.title } }
    end

    assert_redirected_to buffet_url(Buffet.last)
  end

  test "should show buffet" do
    get buffet_url(@buffet)
    assert_response :success
  end

  test "should get edit" do
    get edit_buffet_url(@buffet)
    assert_response :success
  end

  test "should update buffet" do
    patch buffet_url(@buffet), params: { buffet: { title: @buffet.title } }
    assert_redirected_to buffet_url(@buffet)
  end

  test "should destroy buffet" do
    assert_difference('Buffet.count', -1) do
      delete buffet_url(@buffet)
    end

    assert_redirected_to buffets_url
  end
end
