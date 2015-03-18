class AddTodolistidToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :todolist_id, :integer
  end
end
