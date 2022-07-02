class AddColumnsToUsers2 < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :admin, :boolean, null: false, default: false
    add_column :users, :kind, :integer, null: false, default: 0
  end
end
