class TodosController < ApplicationController
  
  def index
    @todos = Todo.all
    @todo = Todo.new
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create todo_params
    redirect_to root_path
  end

  def show
    @todo = Todo.find params[:id]
  end

  def edit
    @todo = Todo.find params[:id]
  end

  def update
    @todo = Todo.find params[:id]
    @todo.update_attributes todo_params
    redirect_to todo_path(@todo)
  end

  def destroy
    todo = Todo.find params[:id]
    todo.destroy
    redirect_to root_path
  end

  private
  def todo_params
    params.permit(:item)
  end

end
