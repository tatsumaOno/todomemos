class AddNameToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name,:string,null: false,limit: 100,presence: true
  end
end
