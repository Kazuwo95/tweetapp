class AddUserIdToBolgs < ActiveRecord::Migration[5.1]
  def change
    add_column :blogs, :user_id, :integer
  end
end
