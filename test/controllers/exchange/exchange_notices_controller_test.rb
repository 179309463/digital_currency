require 'test_helper'

class Exchange::ExchangeNoticesControllerTest < ActionController::TestCase
  setup do
    @exchange_notice = exchange_notices(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exchange_notices)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exchange_notice" do
    assert_difference('ExchangeNotice.count') do
      post :create, exchange_notice: { exchange_id: @exchange_notice.exchange_id, href: @exchange_notice.href, title: @exchange_notice.title }
    end

    assert_redirected_to exchange_exchange_notice_path(assigns(:exchange_notice))
  end

  test "should show exchange_notice" do
    get :show, id: @exchange_notice
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exchange_notice
    assert_response :success
  end

  test "should update exchange_notice" do
    patch :update, id: @exchange_notice, exchange_notice: { exchange_id: @exchange_notice.exchange_id, href: @exchange_notice.href, title: @exchange_notice.title }
    assert_redirected_to exchange_exchange_notice_path(assigns(:exchange_notice))
  end

  test "should destroy exchange_notice" do
    assert_difference('ExchangeNotice.count', -1) do
      delete :destroy, id: @exchange_notice
    end

    assert_redirected_to exchange_exchange_notices_path
  end
end
