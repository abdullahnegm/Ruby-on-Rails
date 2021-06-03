require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


  setup do
    @category = Category.new(name: "Sport")
  end

  test "Should be Valid" do
    assert @category.valid?
  end

  test "Required Field" do
    @category.name = " "
    assert_not @category.valid?
  end

  test "Unique Field" do
    @category.save
    category2 = Category.new(name: "Sport")
    assert_not category2.valid?
  end

  test "Not too long" do
    @category.name = "a" * 26
    assert_not @category.valid?
  end

  test "Not too Short" do
    @category.name = "a"
    assert_not @category.valid?
  end


end
