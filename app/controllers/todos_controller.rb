class TodosController < ApplicationController
  def index
    @list = List.find params[:list_id]
    @todos = @list.todos
  end


  def show
  end


  def edit
    @todo = Todo.find params[:id]
  end

  def new
    @todo = Todo.new
  end



  def create
    @todo = Todo.new todo_params
    if @todo.save
      redirect_to list_todos_path(todo.list)
    else
      render :new
    end
  end

  def update
    @list = List.find params[:list_id]
    @todo = todo.update_attributes todo_params
    @todo.list = @list
    if @todo.save
      redirect_to list_todos_path(@list)
    else
      render :edit
    end
  end


  def destroy
    todo = Todo.find params[:id]
    todo.list = list
    todo.destroy
    redirect_to list_todos_path(list)
  end

  private
  def todo_params
    params.require(:todo).permit(:task, :list_id)
  end
end
