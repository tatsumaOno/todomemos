class AddToCompleteCard < ActiveRecord::Migration[5.2]
  def change
    add_reference :complete_cards,:user,index: true
  end
end
