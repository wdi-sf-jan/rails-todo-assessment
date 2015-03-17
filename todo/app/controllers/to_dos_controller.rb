class ToDosController < ApplicationController
  def index
    @todolist = Todolist.find(params[:todolist_id])
    @todos = ToDo.all
  end

  def show
    @todolist = Todolist.find(params[:todolist_id])
    @todo = ToDo.find(params[:id])
  end

  def edit
    @todolist = Todolist.find(params[:todolist_id])
    @todo = ToDo.find(params[:id])
  end

  def new
    @todo = ToDo.new
    @todolist = Todolist.find(params[:todolist_id])
  end

  def create
    @todolist = Todolist.find(params[:todolist_id])
    @todo = @todolist.to_dos.create(todo_name: params[:to_do][:todo_name])
    redirect_to todolist_path(@todolist)
  end

  def update
     @todolist = Todolist.find(params[:todolist_id])
     @todo = @todolist.to_dos.find(params[:id]).update_attribute(:todo_name, params[:to_do][:todo_name])
     redirect_to todolist_path(@todolist)
  end

  def destroy
    todolist = Todolist.find(params[:todolist_id])
    todo = todolist.to_dos.find(params[:id]).destroy
    redirect_to todolist_path(todolist.id)
  end

end
