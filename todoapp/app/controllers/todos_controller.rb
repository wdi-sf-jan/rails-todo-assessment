class TodosController < ApplicationController
  def index

      @todolist = Todolist.find params[:todolist_id]
      @todos = @todolist.todos
  end

  def show
  end

  def new
      @todo = Todo.new
  end

  def create
      @todo = Todo.new(todo_params)
      @todo.save
      redirect_to :back
  end

  def edit
  end


  private

  def todo_params
  params.require(:todo).permit(:description, :id, :todolist_id)
  end


end
