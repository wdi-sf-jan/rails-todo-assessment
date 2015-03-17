class CreateToDos < ActiveRecord::Migration
  def change
    create_table :to_dos do |t|
      t.string :todo_name
      t.integer :todolist_id

      t.timestamps null: false
    end
  end
end
