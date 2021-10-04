class CreateName < ActiveRecord::Migration[6.0]
  def change
    create_table :names do |t|
      t.string :name
    end
  end
end
