class CreateOwnerships < ActiveRecord::Migration[5.0]
  def change
    create_table :ownerships do |t|
      t.integer :space_id, null: false
      t.integer :owner_id, null: false
      t.integer :ownership_type_id, null: false

      t.timestamps null: false
    end

    add_index :ownerships, [:space_id, :owner_id]
  end
end
