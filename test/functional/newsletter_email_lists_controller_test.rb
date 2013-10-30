require 'test_helper'

class NewsletterEmailListsControllerTest < ActionController::TestCase
  setup do
    @newsletter_email_list = newsletter_email_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsletter_email_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsletter_email_list" do
    assert_difference('NewsletterEmailList.count') do
      post :create, newsletter_email_list: { email: @newsletter_email_list.email, name: @newsletter_email_list.name }
    end

    assert_redirected_to newsletter_email_list_path(assigns(:newsletter_email_list))
  end

  test "should show newsletter_email_list" do
    get :show, id: @newsletter_email_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsletter_email_list
    assert_response :success
  end

  test "should update newsletter_email_list" do
    put :update, id: @newsletter_email_list, newsletter_email_list: { email: @newsletter_email_list.email, name: @newsletter_email_list.name }
    assert_redirected_to newsletter_email_list_path(assigns(:newsletter_email_list))
  end

  test "should destroy newsletter_email_list" do
    assert_difference('NewsletterEmailList.count', -1) do
      delete :destroy, id: @newsletter_email_list
    end

    assert_redirected_to newsletter_email_lists_path
  end
end
