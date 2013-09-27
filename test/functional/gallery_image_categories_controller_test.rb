require 'test_helper'

class GalleryImageCategoriesControllerTest < ActionController::TestCase
  setup do
    @gallery_image_category = gallery_image_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gallery_image_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gallery_image_category" do
    assert_difference('GalleryImageCategory.count') do
      post :create, gallery_image_category: { name: @gallery_image_category.name, sort_order: @gallery_image_category.sort_order }
    end

    assert_redirected_to gallery_image_category_path(assigns(:gallery_image_category))
  end

  test "should show gallery_image_category" do
    get :show, id: @gallery_image_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gallery_image_category
    assert_response :success
  end

  test "should update gallery_image_category" do
    put :update, id: @gallery_image_category, gallery_image_category: { name: @gallery_image_category.name, sort_order: @gallery_image_category.sort_order }
    assert_redirected_to gallery_image_category_path(assigns(:gallery_image_category))
  end

  test "should destroy gallery_image_category" do
    assert_difference('GalleryImageCategory.count', -1) do
      delete :destroy, id: @gallery_image_category
    end

    assert_redirected_to gallery_image_categories_path
  end
end
