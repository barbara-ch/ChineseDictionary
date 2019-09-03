require 'test_helper'

class PinyinsControllerTest < ActionController::TestCase
  setup do
    @pinyin = pinyins(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pinyins)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pinyin" do
    assert_difference('Pinyin.count') do
      post :create, pinyin: { alternative: @pinyin.alternative, syllable: @pinyin.syllable, tone: @pinyin.tone }
    end

    assert_redirected_to pinyin_path(assigns(:pinyin))
  end

  test "should show pinyin" do
    get :show, id: @pinyin
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pinyin
    assert_response :success
  end

  test "should update pinyin" do
    patch :update, id: @pinyin, pinyin: { alternative: @pinyin.alternative, syllable: @pinyin.syllable, tone: @pinyin.tone }
    assert_redirected_to pinyin_path(assigns(:pinyin))
  end

  test "should destroy pinyin" do
    assert_difference('Pinyin.count', -1) do
      delete :destroy, id: @pinyin
    end

    assert_redirected_to pinyins_path
  end
end
