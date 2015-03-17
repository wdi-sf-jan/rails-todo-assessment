class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.integer :deadline
      t.integer :todo_list_id

      t.timestamps null: false
    end
  end
end
