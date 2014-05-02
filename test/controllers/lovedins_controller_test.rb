require 'test_helper'

class LovedinsControllerTest < ActionController::TestCase
  setup do
    @lovedin = lovedins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lovedins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lovedin" do
    assert_difference('Lovedin.count') do
      post :create, lovedin: { birth: @lovedin.birth, name: @lovedin.name }
    end

    assert_redirected_to lovedin_path(assigns(:lovedin))
  end

  test "should show lovedin" do
    get :show, id: @lovedin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lovedin
    assert_response :success
  end

  test "should update lovedin" do
    patch :update, id: @lovedin, lovedin: { birth: @lovedin.birth, name: @lovedin.name }
    assert_redirected_to lovedin_path(assigns(:lovedin))
  end

  test "should destroy lovedin" do
    assert_difference('Lovedin.count', -1) do
      delete :destroy, id: @lovedin
    end

    assert_redirected_to lovedins_path
  end
end
