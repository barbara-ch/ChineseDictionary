require 'test_helper'

class PartofspeachesControllerTest < ActionController::TestCase
  setup do
    @partofspeach = partofspeaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:partofspeaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create partofspeach" do
    assert_difference('Partofspeach.count') do
      post :create, partofspeach: { name: @partofspeach.name, short: @partofspeach.short }
    end

    assert_redirected_to partofspeach_path(assigns(:partofspeach))
  end

  test "should show partofspeach" do
    get :show, id: @partofspeach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @partofspeach
    assert_response :success
  end

  test "should update partofspeach" do
    patch :update, id: @partofspeach, partofspeach: { name: @partofspeach.name, short: @partofspeach.short }
    assert_redirected_to partofspeach_path(assigns(:partofspeach))
  end

  test "should destroy partofspeach" do
    assert_difference('Partofspeach.count', -1) do
      delete :destroy, id: @partofspeach
    end

    assert_redirected_to partofspeaches_path
  end
end
