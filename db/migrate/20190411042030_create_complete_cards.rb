class CreateCompleteCards < ActiveRecord::Migration[5.2]
  def change
    create_table :complete_cards do |t|

      t.timestamps
    end
  end
end
