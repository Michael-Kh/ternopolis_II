require 'test_helper'

class OrdersControllerTest < ActionController::TestCase
  setup do
    @order = orders(:one)
    
      @update = {
        room_id: 1,
        arrival: 2016-11-24,
        leaving: 2016-11-25,
        first_name: 'John',
        last_name: 'Mombo',
        email: 'johnmombo@example.com'
      }
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create order" do
    assert_difference('Order.count') do
      post :create, order: { arrival: @order.arrival, leaving: @order.leaving, room_id: @order.room_id,
                                      first_name: @order.first_name, last_name: @order.last_name, email: @order.email }
    end

    assert_redirected_to order_path(assigns(:order))
  end

  test "should show order" do
    get :show, id: @order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @order
    assert_response :success
  end

  test "should update order" do
    patch :update, id: @order, order: { arrival: @order.arrival, leaving: @order.leaving, room_id: @order.room_id,
                                      first_name: @order.first_name, last_name: @order.last_name, email: @order.email }
    assert_redirected_to order_path(assigns(:order))
  end

  test "should destroy order" do
    assert_difference('Order.count', -1) do
      delete :destroy, id: @order
    end

    assert_redirected_to orders_path
  end
end
