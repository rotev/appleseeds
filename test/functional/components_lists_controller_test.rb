require 'test_helper'

class ComponentsListsControllerTest < ActionController::TestCase
  setup do
    @components_list = components_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:components_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create components_list" do
    assert_difference('ComponentsList.count') do
      post :create, components_list: { name: @components_list.name, slug: @components_list.slug }
    end

    assert_redirected_to components_list_path(assigns(:components_list))
  end

  test "should show components_list" do
    get :show, id: @components_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @components_list
    assert_response :success
  end

  test "should update components_list" do
    put :update, id: @components_list, components_list: { name: @components_list.name, slug: @components_list.slug }
    assert_redirected_to components_list_path(assigns(:components_list))
  end

  test "should destroy components_list" do
    assert_difference('ComponentsList.count', -1) do
      delete :destroy, id: @components_list
    end

    assert_redirected_to components_lists_path
  end
end
