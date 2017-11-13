class CreateOfferings < ActiveRecord::Migration[5.1]
  def change
    create_table :offerings do |t|
      t.integer :route_id
      t.string :company
      t.string :title
      t.decimal :price

      t.timestamps
    end
  end
end
