class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
      @todo = Todo.new todo_params
      if @todo.save
        redirect_to root_path
      else
        render :new
      end
  end

  def show
    @todo = Todo.find_by_id params[:id]
  end

  def edit
    @todo = Todo.find_by_id params[:id]
    redirect_to root_path
  end

  def destroy
    @todo=Todo.find_by_id params[:id]
    @todo.destroy
    redirect_to root_path
  end

  private 
    def todo_params
      params.require(:todo).permit(:task)
    end
end
