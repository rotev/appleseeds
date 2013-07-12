require 'test_helper'

class AddSectionToPagesControllerTest < ActionController::TestCase
  setup do
    @add_section_to_page = add_section_to_pages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:add_section_to_pages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create add_section_to_page" do
    assert_difference('AddSectionToPage.count') do
      post :create, add_section_to_page: { section_id: @add_section_to_page.section_id }
    end

    assert_redirected_to add_section_to_page_path(assigns(:add_section_to_page))
  end

  test "should show add_section_to_page" do
    get :show, id: @add_section_to_page
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @add_section_to_page
    assert_response :success
  end

  test "should update add_section_to_page" do
    put :update, id: @add_section_to_page, add_section_to_page: { section_id: @add_section_to_page.section_id }
    assert_redirected_to add_section_to_page_path(assigns(:add_section_to_page))
  end

  test "should destroy add_section_to_page" do
    assert_difference('AddSectionToPage.count', -1) do
      delete :destroy, id: @add_section_to_page
    end

    assert_redirected_to add_section_to_pages_path
  end
end
