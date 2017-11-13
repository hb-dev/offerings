class CreateStops < ActiveRecord::Migration[5.1]
  def change
    create_table :stops do |t|
      t.integer :route_id
      t.integer :port_id
      t.datetime :arrival

      t.timestamps
    end
  end
end
