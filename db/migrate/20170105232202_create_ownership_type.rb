class CreateOwnershipType < ActiveRecord::Migration[5.0]
  def change
    create_table :ownership_types do |t|
      t.integer :type_id, null: false
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end

    add_index :ownership_types, [:type_id, :name], unique: true
  end
end
