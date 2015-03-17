class CreateTodoitems < ActiveRecord::Migration
  def change
    create_table :todoitems do |t|
      t.string :itemtitle
      t.string :todolist_id

      t.timestamps null: false
    end
  end
end
