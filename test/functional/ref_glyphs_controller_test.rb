require 'test_helper'

class RefGlyphsControllerTest < ActionController::TestCase
  setup do
    @ref_glyph = ref_glyphs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ref_glyphs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ref_glyph" do
    assert_difference('RefGlyph.count') do
      post :create, ref_glyph: @ref_glyph.attributes
    end

    assert_redirected_to ref_glyph_path(assigns(:ref_glyph))
  end

  test "should show ref_glyph" do
    get :show, id: @ref_glyph.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ref_glyph.to_param
    assert_response :success
  end

  test "should update ref_glyph" do
    put :update, id: @ref_glyph.to_param, ref_glyph: @ref_glyph.attributes
    assert_redirected_to ref_glyph_path(assigns(:ref_glyph))
  end

  test "should destroy ref_glyph" do
    assert_difference('RefGlyph.count', -1) do
      delete :destroy, id: @ref_glyph.to_param
    end

    assert_redirected_to ref_glyphs_path
  end
end
