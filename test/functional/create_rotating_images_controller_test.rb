require 'test_helper'

class RotatingImagesControllerTest < ActionController::TestCase
  setup do
    @rotating_image = rotating_images(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rotating_images)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rotating_image" do
    assert_difference('RotatingImage.count') do
      post :create, rotating_image: { image: @rotating_image.image, live: @rotating_image.live, rotation_time: @rotating_image.rotation_time, sort_order: @rotating_image.sort_order }
    end

    assert_redirected_to rotating_image_path(assigns(:rotating_image))
  end

  test "should show rotating_image" do
    get :show, id: @rotating_image
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rotating_image
    assert_response :success
  end

  test "should update rotating_image" do
    put :update, id: @rotating_image, rotating_image: { image: @rotating_image.image, live: @rotating_image.live, rotation_time: @rotating_image.rotation_time, sort_order: @rotating_image.sort_order }
    assert_redirected_to rotating_image_path(assigns(:rotating_image))
  end

  test "should destroy rotating_image" do
    assert_difference('RotatingImage.count', -1) do
      delete :destroy, id: @rotating_image
    end

    assert_redirected_to rotating_images_path
  end
end
