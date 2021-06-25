class CreateRoomItems < ActiveRecord::Migration[6.1]
  def change
    create_table :room_items do |t|

      t.timestamps
    end
  end
end
