require 'test_helper'

class TrentonsControllerTest < ActionController::TestCase
  setup do
    @trenton = trentons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:trentons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create trenton" do
    assert_difference('Trenton.count') do
      post :create, trenton: { image: @trenton.image, meet_the_artist_text: @trenton.meet_the_artist_text, video_link: @trenton.video_link }
    end

    assert_redirected_to trenton_path(assigns(:trenton))
  end

  test "should show trenton" do
    get :show, id: @trenton
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @trenton
    assert_response :success
  end

  test "should update trenton" do
    put :update, id: @trenton, trenton: { image: @trenton.image, meet_the_artist_text: @trenton.meet_the_artist_text, video_link: @trenton.video_link }
    assert_redirected_to trenton_path(assigns(:trenton))
  end

  test "should destroy trenton" do
    assert_difference('Trenton.count', -1) do
      delete :destroy, id: @trenton
    end

    assert_redirected_to trentons_path
  end
end
