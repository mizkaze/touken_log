class AddColumnUsers < ActiveRecord::Migration[6.1]
  def change
      add_column :users, :name, :string, null: false
      add_column :users, :introduction, :text, null: false
      add_column :users, :status, :integer, null: false, default: "0"
      add_column :users, :is_active, :boolean, null: false, default: "TRUE"
  end
end
