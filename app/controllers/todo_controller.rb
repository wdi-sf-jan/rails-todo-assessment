class TodoController < ApplicationController
  def index
    @todo_lists = Todo_list.find params[:todo_list_id]
    @todos = @todo_list.todos
  end

  def new
    @todo_lists = TodoList.find params[:todo_list_id]
    @todo = Todo.new
  end

  def create
    @todo_lists = Todo_list.find params[:todo_list_id]
    @todo = Todo.new todo_params
    @todo.todo_list = @todo_list
    if @todo.save
       redirect_to todo_list_todos_path(@todo_list)
    else
      render :new
    end
  end

  def show
    @todo = Todo.find params[:id]
    @todo_list = @todo.todo_list
  end

  def edit
    @todo = Todo.find params[:id]
    @todo_list = @todo.todo_list
  end

  def update
    @todo_list = Todo_list.find params[:id]
    @todo.update_attribute todo_params
    @todo_list = @todo.todo_list
    if @todo.save
      redirect_to todo_path(@todo)
    else
      render :edit
    end
  end

  def destroy 
    todo = Todo.find params[:id]
    todo.destroy
    redirect_to todo_lists_path(todo.todo_list)
  end

  private 
  def todo_params
    params.require(:todo).permit(:task, :todo_list_id, :deadline)
  end
end
