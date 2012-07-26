require 'test_helper'

class NewsscriptsControllerTest < ActionController::TestCase
  setup do
    @newsscript = newsscripts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:newsscripts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create newsscript" do
    assert_difference('Newsscript.count') do
      post :create, newsscript: { author: @newsscript.author, headline: @newsscript.headline, news: @newsscript.news }
    end

    assert_redirected_to newsscript_path(assigns(:newsscript))
  end

  test "should show newsscript" do
    get :show, id: @newsscript
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @newsscript
    assert_response :success
  end

  test "should update newsscript" do
    put :update, id: @newsscript, newsscript: { author: @newsscript.author, headline: @newsscript.headline, news: @newsscript.news }
    assert_redirected_to newsscript_path(assigns(:newsscript))
  end

  test "should destroy newsscript" do
    assert_difference('Newsscript.count', -1) do
      delete :destroy, id: @newsscript
    end

    assert_redirected_to newsscripts_path
  end
end
