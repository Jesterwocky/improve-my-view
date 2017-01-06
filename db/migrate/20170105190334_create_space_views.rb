class CreateSpaceViews < ActiveRecord::Migration[5.0]
  def change
    create_table :space_views do |t|
      t.integer :space_id, null: false
      t.integer :owner_id, null: false
      t.attachment :image, null: false

      t.timestamps null: false
    end

    add_index :space_views, [:space_id, :owner_id]
  end
end
