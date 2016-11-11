require 'test_helper'

class StoreManagersControllerTest < ActionController::TestCase
  setup do
    @store_manager = store_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:store_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create store_manager" do
    assert_difference('StoreManager.count') do
      post :create, store_manager: { email: @store_manager.email, location_id: @store_manager.location_id, name: @store_manager.name, phone;string: @store_manager.phone;string }
    end

    assert_redirected_to store_manager_path(assigns(:store_manager))
  end

  test "should show store_manager" do
    get :show, id: @store_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @store_manager
    assert_response :success
  end

  test "should update store_manager" do
    patch :update, id: @store_manager, store_manager: { email: @store_manager.email, location_id: @store_manager.location_id, name: @store_manager.name, phone;string: @store_manager.phone;string }
    assert_redirected_to store_manager_path(assigns(:store_manager))
  end

  test "should destroy store_manager" do
    assert_difference('StoreManager.count', -1) do
      delete :destroy, id: @store_manager
    end

    assert_redirected_to store_managers_path
  end
end
