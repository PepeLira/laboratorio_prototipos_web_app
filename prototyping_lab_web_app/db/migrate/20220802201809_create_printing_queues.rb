class CreatePrintingQueues < ActiveRecord::Migration[7.0]
  def change
    create_table :printing_queues do |t|
      t.references :printer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
