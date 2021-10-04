class AddDropdownToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :dropdown, :string
  end
end
