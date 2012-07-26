require 'test_helper'

class ImpressumsControllerTest < ActionController::TestCase
  setup do
    @impressum = impressums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:impressums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create impressum" do
    assert_difference('Impressum.count') do
      post :create, impressum: { impressum: @impressum.impressum }
    end

    assert_redirected_to impressum_path(assigns(:impressum))
  end

  test "should show impressum" do
    get :show, id: @impressum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @impressum
    assert_response :success
  end

  test "should update impressum" do
    put :update, id: @impressum, impressum: { impressum: @impressum.impressum }
    assert_redirected_to impressum_path(assigns(:impressum))
  end

  test "should destroy impressum" do
    assert_difference('Impressum.count', -1) do
      delete :destroy, id: @impressum
    end

    assert_redirected_to impressums_path
  end
end
