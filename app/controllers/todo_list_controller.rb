class TodoListController < ApplicationController
  def index
    @todo_lists = TodoList.all
  end

  def new
    @todo_list = TodoList.new
  end

  def create
    @todo_list = TodoList.new todo_list_params
    if @todo_list.save
      redirect_to todo_list_index_path
    else 
      render :new
    end
  end

  def show
    @todo_list = TodoList.find params[:id]
    @todos = @todo_list.todos
  end

  def edit
    @todo_list = TodoList.find params[:id]
  end

  


  private
  def todo_list_params
    params.require(:todo_list).permit(:name, :id)
  end
end
