require 'test_helper'

class RefSoundsControllerTest < ActionController::TestCase
  setup do
    @ref_sound = ref_sounds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ref_sounds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ref_sound" do
    assert_difference('RefSound.count') do
      post :create, ref_sound: @ref_sound.attributes
    end

    assert_redirected_to ref_sound_path(assigns(:ref_sound))
  end

  test "should show ref_sound" do
    get :show, id: @ref_sound.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ref_sound.to_param
    assert_response :success
  end

  test "should update ref_sound" do
    put :update, id: @ref_sound.to_param, ref_sound: @ref_sound.attributes
    assert_redirected_to ref_sound_path(assigns(:ref_sound))
  end

  test "should destroy ref_sound" do
    assert_difference('RefSound.count', -1) do
      delete :destroy, id: @ref_sound.to_param
    end

    assert_redirected_to ref_sounds_path
  end
end
