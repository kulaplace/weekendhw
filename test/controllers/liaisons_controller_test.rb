require 'test_helper'

class LiaisonsControllerTest < ActionController::TestCase
  setup do
    @liaison = liaisons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:liaisons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create liaison" do
    assert_difference('Liaison.count') do
      post :create, liaison: { name: @liaison.name, relation: @liaison.relation }
    end

    assert_redirected_to liaison_path(assigns(:liaison))
  end

  test "should show liaison" do
    get :show, id: @liaison
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @liaison
    assert_response :success
  end

  test "should update liaison" do
    patch :update, id: @liaison, liaison: { name: @liaison.name, relation: @liaison.relation }
    assert_redirected_to liaison_path(assigns(:liaison))
  end

  test "should destroy liaison" do
    assert_difference('Liaison.count', -1) do
      delete :destroy, id: @liaison
    end

    assert_redirected_to liaisons_path
  end
end
