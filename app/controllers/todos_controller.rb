class TodosController < ApplicationController
  before_action :find_parent_list, only: [:new, :create, :edit]
  before_action :get_todo, only: [:edit, :update]
  def new
  end

  def create
    @todolist.todos.create todo_params
    redirect_to todolist_path(id: params[:todolist_id])
  end

  def edit
  end

  def update
    @todo.update todo_params
    redirect_to todolist_path(id: params[:todolist_id])
  end

  def destroy
    Todo.destroy(params[:id])
    redirect_to todolist_path(id: params[:todolist_id])
  end

  private
  def find_parent_list
    @todolist = Todolist.find(params[:todolist_id])
  end

  def get_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:content)
  end
end
