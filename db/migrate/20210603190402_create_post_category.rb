class CreatePostCategory < ActiveRecord::Migration[6.1]
  def change
    create_table :post_categories do |t|

      t.integer :category_id
      t.integer :post_id

    end
  end
end
