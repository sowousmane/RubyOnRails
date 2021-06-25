class AddBuildingToRoom < ActiveRecord::Migration[6.1]
  def change
    add_reference :rooms, :Building, null: false, foreign_key: true
  end
end
