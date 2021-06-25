class AddRoomToRoomItem < ActiveRecord::Migration[6.1]
  def change
    add_reference :room_items, :Room, null: false, foreign_key: true
  end
end
