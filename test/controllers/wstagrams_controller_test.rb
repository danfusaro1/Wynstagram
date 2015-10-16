require 'test_helper'

class WstagramsControllerTest < ActionController::TestCase
  setup do
    @wstagram = wstagrams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:wstagrams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create wstagram" do
    assert_difference('Wstagram.count') do
      post :create, wstagram: { description: @wstagram.description, picture: @wstagram.picture }
    end

    assert_redirected_to wstagram_path(assigns(:wstagram))
  end

  test "should show wstagram" do
    get :show, id: @wstagram
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @wstagram
    assert_response :success
  end

  test "should update wstagram" do
    patch :update, id: @wstagram, wstagram: { description: @wstagram.description, picture: @wstagram.picture }
    assert_redirected_to wstagram_path(assigns(:wstagram))
  end

  test "should destroy wstagram" do
    assert_difference('Wstagram.count', -1) do
      delete :destroy, id: @wstagram
    end

    assert_redirected_to wstagrams_path
  end
end
