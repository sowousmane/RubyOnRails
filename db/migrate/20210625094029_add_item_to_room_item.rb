class AddItemToRoomItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :room_items, :Item, null: false, foreign_key: true
  end
end
