class CreateListsTodos < ActiveRecord::Migration
  def change
    create_table :lists_todos do |t|
      t.integer :list_id
      t.integer :task_id

      t.timestamps null: false
    end
  end
end
