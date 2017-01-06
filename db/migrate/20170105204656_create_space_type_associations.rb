class CreateSpaceTypeAssociations < ActiveRecord::Migration[5.0]
  def change
    create_table :space_type_associations do |t|
      t.integer :space_id, null: false
      t.integer :space_type_id, null: false

      t.timestamps null: false
    end
  end
end
