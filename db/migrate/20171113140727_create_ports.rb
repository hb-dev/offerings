class CreatePorts < ActiveRecord::Migration[5.1]
  def change
    create_table :ports do |t|
      t.string :name
      t.string :code
      t.string :country

      t.timestamps
    end
  end
end
