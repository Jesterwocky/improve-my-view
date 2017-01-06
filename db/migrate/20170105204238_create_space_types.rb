class CreateSpaceTypes < ActiveRecord::Migration[5.0]
  def change
    create_table :space_types do |t|
      t.integer :type_id, null: false
      t.string :name, null: false
      t.text :description

      t.timestamps null: false
    end

    add_index :space_types, [:type_id, :name], unique: true
  end
end
