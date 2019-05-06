class AddTitleToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users,:title,:string,default: "5級"
  end
end
