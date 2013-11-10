require 'test_helper'

class ShopsControllerTest < ActionController::TestCase
  setup do
    @shop = shops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shop" do
    assert_difference('Shop.count') do
      post :create, shop: { full_address: @shop.full_address, shop_contact: @shop.shop_contact, shop_description: @shop.shop_description, shop_line: @shop.shop_line, shop_number: @shop.shop_number, shop_owner: @shop.shop_owner }
    end

    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should show shop" do
    get :show, id: @shop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shop
    assert_response :success
  end

  test "should update shop" do
    patch :update, id: @shop, shop: { full_address: @shop.full_address, shop_contact: @shop.shop_contact, shop_description: @shop.shop_description, shop_line: @shop.shop_line, shop_number: @shop.shop_number, shop_owner: @shop.shop_owner }
    assert_redirected_to shop_path(assigns(:shop))
  end

  test "should destroy shop" do
    assert_difference('Shop.count', -1) do
      delete :destroy, id: @shop
    end

    assert_redirected_to shops_path
  end
end
