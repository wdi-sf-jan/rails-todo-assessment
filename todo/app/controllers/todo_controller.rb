class TodoController < ApplicationController
  def new
  	@item = Todolist.new
  end

  def index
  	@items = Todolist.all
  end

  def show
  	@item = Todolist.find_by params[:id]
  end

  def edit
  	@item = Todolist.find_by params[:id]
  end

  def create
  	@item = Todolist.create params[:id]
  	redirect_to todo_index_path
  end

  def update
  	@item = Todolist.find_by params[:id]
  	redirect_to todo_index_path
  end

  def destroy
  	@item = Todolist.find_by params[:id]
		@item.delete        
    redirect_to todo_index_path
  end
end
