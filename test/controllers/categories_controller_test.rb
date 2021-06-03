require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest

  test "Get index" do
    get categories_path
    assert_response :success
  end

  test "Get Show" do
    category = Category.create(name: "Sport")
    get category_path(category)
    assert_response :success
  end

  test "Get New" do
    get new_category_path
    assert_response :success
  end

end
