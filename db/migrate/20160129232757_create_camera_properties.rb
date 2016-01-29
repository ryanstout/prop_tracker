class CreateCameraProperties < ActiveRecord::Migration
  def change
    create_table :camera_properties do |t|
      t.string :name
      t.string :prop_hash
      t.text :properties

      t.timestamps null: false
    end

    add_index :camera_properties, [:name, :prop_hash], unique: true
  end
end
