class CreateImprovements < ActiveRecord::Migration[5.0]
  def change
    create_table :improvements do |t|
      t.integer :space_view_id
      t.integer :author_id
      t.text :description

      t.timestamps null: false
    end

    add_index :improvements, :space_view_id
  end
end
