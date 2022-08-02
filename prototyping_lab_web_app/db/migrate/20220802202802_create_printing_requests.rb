class CreatePrintingRequests < ActiveRecord::Migration[7.0]
  def change
    create_table :printing_requests do |t|
      t.references :student, null: false, foreign_key: true
      t.references :printing_queue, null: false, foreign_key: true
      t.references :lab_assistant, null: false, foreign_key: true
      t.integer :depth
      t.integer :length
      t.integer :height
      t.string :course
      t.text :comment
      t.string :state
      t.string :status

      t.timestamps
    end
  end
end
