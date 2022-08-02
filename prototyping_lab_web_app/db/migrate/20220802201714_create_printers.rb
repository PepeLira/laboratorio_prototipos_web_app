class CreatePrinters < ActiveRecord::Migration[7.0]
  def change
    create_table :printers do |t|
      t.string :name
      t.integer :length
      t.integer :height
      t.integer :depth
      t.string :state

      t.timestamps
    end
  end
end
