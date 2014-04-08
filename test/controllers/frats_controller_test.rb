require 'test_helper'

class FratsControllerTest < ActionController::TestCase
  setup do
    @frat = frats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:frats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create frat" do
    assert_difference('Frat.count') do
      post :create, frat: { id: @frat.id, name: @frat.name }
    end

    assert_redirected_to frat_path(assigns(:frat))
  end

  test "should show frat" do
    get :show, id: @frat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @frat
    assert_response :success
  end

  test "should update frat" do
    patch :update, id: @frat, frat: { id: @frat.id, name: @frat.name }
    assert_redirected_to frat_path(assigns(:frat))
  end

  test "should destroy frat" do
    assert_difference('Frat.count', -1) do
      delete :destroy, id: @frat
    end

    assert_redirected_to frats_path
  end
end
