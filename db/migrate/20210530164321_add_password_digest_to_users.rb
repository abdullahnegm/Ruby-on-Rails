class AddPasswordDigestToUsers < ActiveRecord::Migration[6.1]
  def change
    add_ecolumn :users, :password_digest, :string
  end
end
