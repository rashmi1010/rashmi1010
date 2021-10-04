class AddCheckboxToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :checkbox, :string
  end
end
