class ChangeColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :admin, :boolean
    change_column :users, :status, :boolean, default: true
    remove_column :users, :kind, :string
  end

end
