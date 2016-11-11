require 'test_helper'

class AgencyContactsControllerTest < ActionController::TestCase
  setup do
    @agency_contact = agency_contacts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:agency_contacts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create agency_contact" do
    assert_difference('AgencyContact.count') do
      post :create, agency_contact: { email: @agency_contact.email, location_id: @agency_contact.location_id, name: @agency_contact.name, phone: @agency_contact.phone }
    end

    assert_redirected_to agency_contact_path(assigns(:agency_contact))
  end

  test "should show agency_contact" do
    get :show, id: @agency_contact
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @agency_contact
    assert_response :success
  end

  test "should update agency_contact" do
    patch :update, id: @agency_contact, agency_contact: { email: @agency_contact.email, location_id: @agency_contact.location_id, name: @agency_contact.name, phone: @agency_contact.phone }
    assert_redirected_to agency_contact_path(assigns(:agency_contact))
  end

  test "should destroy agency_contact" do
    assert_difference('AgencyContact.count', -1) do
      delete :destroy, id: @agency_contact
    end

    assert_redirected_to agency_contacts_path
  end
end
