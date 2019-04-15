class AddIndexToCard < ActiveRecord::Migration[5.2]
  def change
    add_index :cards, :title
  end
end
