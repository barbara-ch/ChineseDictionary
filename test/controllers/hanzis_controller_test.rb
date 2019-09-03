require 'test_helper'

class HanzisControllerTest < ActionController::TestCase
  setup do
    @hanzi = hanzis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hanzis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hanzi" do
    assert_difference('Hanzi.count') do
      post :create, hanzi: { character: @hanzi.character, description: @hanzi.description, stroke: @hanzi.stroke, traditional: @hanzi.traditional }
    end

    assert_redirected_to hanzi_path(assigns(:hanzi))
  end

  test "should show hanzi" do
    get :show, id: @hanzi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hanzi
    assert_response :success
  end

  test "should update hanzi" do
    patch :update, id: @hanzi, hanzi: { character: @hanzi.character, description: @hanzi.description, stroke: @hanzi.stroke, traditional: @hanzi.traditional }
    assert_redirected_to hanzi_path(assigns(:hanzi))
  end

  test "should destroy hanzi" do
    assert_difference('Hanzi.count', -1) do
      delete :destroy, id: @hanzi
    end

    assert_redirected_to hanzis_path
  end
end
