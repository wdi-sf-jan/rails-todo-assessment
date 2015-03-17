class TodosController < ApplicationController
  def index
    @todos = Todo.all
    @lists = List.all
    @todo = Todo.new
  end

  def show
    @todo = Todo.find params[:id]
  end


  def edit
  end

  def create
    Todo.create todo_params
    redirect_to todos_path
  end

  def list_create
    List.create list_params
    redirect_to todos_path
  end

  def destroy
    todo = Todo.find params[:id]
    todo.destroy
    redirect_to root_path
  end
  private
  def todo_params
    params.require(:todo).permit(:name, :id, :list_id)
  end

  def list_params
    params.require(:list).permit(:name, :id)
  end
end
