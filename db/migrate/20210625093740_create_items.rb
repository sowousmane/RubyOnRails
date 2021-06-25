class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :piicture
      t.integer :weight
      t.integer :length
      t.string :storage_details

      t.timestamps
    end
  end
end
