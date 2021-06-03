require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest

    test "Category Form and Create Category" do
        get new_category_path
        assert_template 'categories/new'
        assert_difference 'Category.count', 1 do
            post categories_path, params: { category: { name: "Sports" }} 
        end
        assert_template 'categories/index', follow_redirect!
        assert_match "Sports", response.body
    end

    test "Invalid Category submission result" do
        get new_category_path
        assert_template 'categories/new'
        assert_no_difference 'Category.count' do
            post categories_path, params: { category: { name: " " }} 
        end
        assert_template 'categories/new'
        assert_select "li.panel-error"

    end

end