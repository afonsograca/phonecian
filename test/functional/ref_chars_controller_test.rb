require 'test_helper'

class RefCharsControllerTest < ActionController::TestCase
  setup do
    @ref_char = ref_chars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ref_chars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ref_char" do
    assert_difference('RefChar.count') do
      post :create, ref_char: @ref_char.attributes
    end

    assert_redirected_to ref_char_path(assigns(:ref_char))
  end

  test "should show ref_char" do
    get :show, id: @ref_char.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ref_char.to_param
    assert_response :success
  end

  test "should update ref_char" do
    put :update, id: @ref_char.to_param, ref_char: @ref_char.attributes
    assert_redirected_to ref_char_path(assigns(:ref_char))
  end

  test "should destroy ref_char" do
    assert_difference('RefChar.count', -1) do
      delete :destroy, id: @ref_char.to_param
    end

    assert_redirected_to ref_chars_path
  end
end
