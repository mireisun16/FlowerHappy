class AddColumnToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name,:string, null: false, default: ""
    add_column :users, :address,:string, null: false, default: ""
    add_column :users, :tel,:string
    add_column :users, :zip,:string
    add_column :users, :company,:string
  end
end
