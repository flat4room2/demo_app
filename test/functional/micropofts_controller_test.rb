require 'test_helper'

class MicropoftsControllerTest < ActionController::TestCase
  setup do
    @micropoft = micropofts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:micropofts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create micropoft" do
    assert_difference('Micropoft.count') do
      post :create, micropoft: { content: @micropoft.content, user_id: @micropoft.user_id }
    end

    assert_redirected_to micropoft_path(assigns(:micropoft))
  end

  test "should show micropoft" do
    get :show, id: @micropoft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @micropoft
    assert_response :success
  end

  test "should update micropoft" do
    put :update, id: @micropoft, micropoft: { content: @micropoft.content, user_id: @micropoft.user_id }
    assert_redirected_to micropoft_path(assigns(:micropoft))
  end

  test "should destroy micropoft" do
    assert_difference('Micropoft.count', -1) do
      delete :destroy, id: @micropoft
    end

    assert_redirected_to micropofts_path
  end
end
