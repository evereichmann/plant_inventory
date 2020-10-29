require 'test_helper'

class OrdersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order = orders(:one)
  end

  test "should get index" do
    get orders_url
    assert_response :success
  end

  test "should get new" do
    get new_order_url
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post orders_url, params: { order: { country_origin: @order.country_origin, data_order: @order.data_order, data_shipped: @order.data_shipped, multiple: @order.multiple, seller_name: @order.seller_name, total_price: @order.total_price, units: @order.units } }
    end

    assert_redirected_to order_url(Order.last)
  end

  test "should show order" do
    get order_url(@order)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_url(@order)
    assert_response :success
  end

  test "should update order" do
    patch order_url(@order), params: { order: { country_origin: @order.country_origin, data_order: @order.data_order, data_shipped: @order.data_shipped, multiple: @order.multiple, seller_name: @order.seller_name, total_price: @order.total_price, units: @order.units } }
    assert_redirected_to order_url(@order)
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete order_url(@order)
    end

    assert_redirected_to orders_url
  end
end
