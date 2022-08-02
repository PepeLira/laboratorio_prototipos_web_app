class CreateLabAssistants < ActiveRecord::Migration[7.0]
  def change
    create_table :lab_assistants do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
