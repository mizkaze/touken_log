class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :kind, :string, null: false
  end
end
