require 'test_helper'

class ContactFormsControllerTest < ActionController::TestCase
  setup do
    @contact_form = contact_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contact_form" do
    assert_difference('ContactForm.count') do
      post :create, contact_form: { address: @contact_form.address, auction_type: @contact_form.auction_type, comments: @contact_form.comments, contact_time: @contact_form.contact_time, email: @contact_form.email, name: @contact_form.name, phone_number: @contact_form.phone_number, preferred_date: @contact_form.preferred_date, preferred_day: @contact_form.preferred_day, preferred_time: @contact_form.preferred_time, request_type: @contact_form.request_type, session_type: @contact_form.session_type }
    end

    assert_redirected_to contact_form_path(assigns(:contact_form))
  end

  test "should show contact_form" do
    get :show, id: @contact_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contact_form
    assert_response :success
  end

  test "should update contact_form" do
    put :update, id: @contact_form, contact_form: { address: @contact_form.address, auction_type: @contact_form.auction_type, comments: @contact_form.comments, contact_time: @contact_form.contact_time, email: @contact_form.email, name: @contact_form.name, phone_number: @contact_form.phone_number, preferred_date: @contact_form.preferred_date, preferred_day: @contact_form.preferred_day, preferred_time: @contact_form.preferred_time, request_type: @contact_form.request_type, session_type: @contact_form.session_type }
    assert_redirected_to contact_form_path(assigns(:contact_form))
  end

  test "should destroy contact_form" do
    assert_difference('ContactForm.count', -1) do
      delete :destroy, id: @contact_form
    end

    assert_redirected_to contact_forms_path
  end
end
