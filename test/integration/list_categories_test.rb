require 'test_helper'

class ListCategoriesTest < ActionDispatch::IntegrationTest

    setup do 
        @category = Category.create(name: "Books")
        @category2 = Category.create(name: "Travel")
    end

    test "Should list categories" do 
        get categories_path
        assert_template "categories/index"
        assert_select "a[href=?]", category_path(@category), text: @category.name
        assert_select "a[href=?]", category_path(@category2), text: @category2.name
    end

end