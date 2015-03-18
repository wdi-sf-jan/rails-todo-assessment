class TodosController < ApplicationController
  def index
    @todolist = Todolist.find params[:todolist_id]
    @todos = @todolist.todos
  end

  def show
    @todo = Todo.find params[:id]
    @todolist = @todo.todolist
  end

  def new
    @todolist = Todolist.find params[:todolist_id]
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find params[:id]
    @todolist = @todo.todolist
  end

  def create
    @todolist = Todolist.find params[:todolist_id]
    @todo = Todo.new todo_params
    @todo.todolist = @todolist
    if @todo.save
      redirect_to todolist_todos_path(@todolist)
    else
      render :new
    end

  end

  def update
    @todo = Todo.find params[:id]
    @todolist = @todo.todolist
    if @todo.update_attributes todo_params
      redirect_to todo_path(@todo)
    else
      render :edit
    end
  end

  def destroy
    todo = Todo.find params[:id]
    todo.destroy
    redirect_to todolist_todos_path(todo.todolist)
  end

  private
    def todo_params
      params.require(:todo).permit(:item, :todolist_id)
    end
end
