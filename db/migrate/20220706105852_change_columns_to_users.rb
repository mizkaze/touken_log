class ChangeColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :admin, :boolean
    change_column :users, :status, :boolean, default: true
    change_column :users, :kind, :string, default: nil
  end
end
