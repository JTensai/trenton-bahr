require 'test_helper'

class OurCharitiesControllerTest < ActionController::TestCase
  setup do
    @our_charity = our_charities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:our_charities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create our_charity" do
    assert_difference('OurCharity.count') do
      post :create, our_charity: { name: @our_charity.name, sort_order: @our_charity.sort_order }
    end

    assert_redirected_to our_charity_path(assigns(:our_charity))
  end

  test "should show our_charity" do
    get :show, id: @our_charity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @our_charity
    assert_response :success
  end

  test "should update our_charity" do
    put :update, id: @our_charity, our_charity: { name: @our_charity.name, sort_order: @our_charity.sort_order }
    assert_redirected_to our_charity_path(assigns(:our_charity))
  end

  test "should destroy our_charity" do
    assert_difference('OurCharity.count', -1) do
      delete :destroy, id: @our_charity
    end

    assert_redirected_to our_charities_path
  end
end
