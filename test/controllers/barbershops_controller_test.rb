require 'test_helper'

class BarbershopsControllerTest < ActionController::TestCase
  setup do
    @barbershop = barbershops(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:barbershops)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create barbershop" do
    assert_difference('Barbershop.count') do
      post :create, barbershop: { address: @barbershop.address, description: @barbershop.description, name: @barbershop.name, user_id: @barbershop.user_id }
    end

    assert_redirected_to barbershop_path(assigns(:barbershop))
  end

  test "should show barbershop" do
    get :show, id: @barbershop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @barbershop
    assert_response :success
  end

  test "should update barbershop" do
    patch :update, id: @barbershop, barbershop: { address: @barbershop.address, description: @barbershop.description, name: @barbershop.name, user_id: @barbershop.user_id }
    assert_redirected_to barbershop_path(assigns(:barbershop))
  end

  test "should destroy barbershop" do
    assert_difference('Barbershop.count', -1) do
      delete :destroy, id: @barbershop
    end

    assert_redirected_to barbershops_path
  end
end
