require 'test_helper'

class RetailLossPreventionManagersControllerTest < ActionController::TestCase
  setup do
    @retail_loss_prevention_manager = retail_loss_prevention_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:retail_loss_prevention_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create retail_loss_prevention_manager" do
    assert_difference('RetailLossPreventionManager.count') do
      post :create, retail_loss_prevention_manager: { email: @retail_loss_prevention_manager.email, location_id: @retail_loss_prevention_manager.location_id, phone: @retail_loss_prevention_manager.phone }
    end

    assert_redirected_to retail_loss_prevention_manager_path(assigns(:retail_loss_prevention_manager))
  end

  test "should show retail_loss_prevention_manager" do
    get :show, id: @retail_loss_prevention_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @retail_loss_prevention_manager
    assert_response :success
  end

  test "should update retail_loss_prevention_manager" do
    patch :update, id: @retail_loss_prevention_manager, retail_loss_prevention_manager: { email: @retail_loss_prevention_manager.email, location_id: @retail_loss_prevention_manager.location_id, phone: @retail_loss_prevention_manager.phone }
    assert_redirected_to retail_loss_prevention_manager_path(assigns(:retail_loss_prevention_manager))
  end

  test "should destroy retail_loss_prevention_manager" do
    assert_difference('RetailLossPreventionManager.count', -1) do
      delete :destroy, id: @retail_loss_prevention_manager
    end

    assert_redirected_to retail_loss_prevention_managers_path
  end
end
