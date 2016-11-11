require 'test_helper'

class CheckInsControllerTest < ActionController::TestCase
  setup do
    @check_in = check_ins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:check_ins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create check_in" do
    assert_difference('CheckIn.count') do
      post :create, check_in: { check_in_time: @check_in.check_in_time, check_out_time: @check_in.check_out_time, crypt_check_code: @check_in.crypt_check_code, job_id: @check_in.job_id, officer_id: @check_in.officer_id }
    end

    assert_redirected_to check_in_path(assigns(:check_in))
  end

  test "should show check_in" do
    get :show, id: @check_in
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @check_in
    assert_response :success
  end

  test "should update check_in" do
    patch :update, id: @check_in, check_in: { check_in_time: @check_in.check_in_time, check_out_time: @check_in.check_out_time, crypt_check_code: @check_in.crypt_check_code, job_id: @check_in.job_id, officer_id: @check_in.officer_id }
    assert_redirected_to check_in_path(assigns(:check_in))
  end

  test "should destroy check_in" do
    assert_difference('CheckIn.count', -1) do
      delete :destroy, id: @check_in
    end

    assert_redirected_to check_ins_path
  end
end
