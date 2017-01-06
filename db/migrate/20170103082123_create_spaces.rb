class CreateSpaces < ActiveRecord::Migration[5.0]
  def change
    create_table :spaces do |t|
      t.string :name, null: false
      t.integer :owner_id, null: false

      t.timestamps null: false
    end

    add_index :spaces, [:owner_id, :name]
  end
end
