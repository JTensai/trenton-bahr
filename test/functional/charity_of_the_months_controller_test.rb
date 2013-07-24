require 'test_helper'

class CharityOfTheMonthsControllerTest < ActionController::TestCase
  setup do
    @charity_of_the_month = charity_of_the_months(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:charity_of_the_months)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create charity_of_the_month" do
    assert_difference('CharityOfTheMonth.count') do
      post :create, charity_of_the_month: { header_image: @charity_of_the_month.header_image, text: @charity_of_the_month.text }
    end

    assert_redirected_to charity_of_the_month_path(assigns(:charity_of_the_month))
  end

  test "should show charity_of_the_month" do
    get :show, id: @charity_of_the_month
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @charity_of_the_month
    assert_response :success
  end

  test "should update charity_of_the_month" do
    put :update, id: @charity_of_the_month, charity_of_the_month: { header_image: @charity_of_the_month.header_image, text: @charity_of_the_month.text }
    assert_redirected_to charity_of_the_month_path(assigns(:charity_of_the_month))
  end

  test "should destroy charity_of_the_month" do
    assert_difference('CharityOfTheMonth.count', -1) do
      delete :destroy, id: @charity_of_the_month
    end

    assert_redirected_to charity_of_the_months_path
  end
end
