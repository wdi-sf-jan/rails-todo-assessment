class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|
      t.integer :todolist_id
      t.text :content

      t.timestamps null: false
    end
  end
end
