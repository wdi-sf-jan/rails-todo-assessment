class CreateTodoItems < ActiveRecord::Migration
  def change
    create_table :todo_items do |t|
      t.string :name
      t.string :desc
      t.integer :todolist_id

      t.timestamps null: false
    end
  end
end
