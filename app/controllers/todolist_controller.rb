class TodolistController < ApplicationController

  def index
    @todolist = Todolist.all
  end

  def show
    @todolist = Todolist.find(params[:id])
    @todoitems = Todoitem.find_by_todolist_id(params[:id]) #this isn't getting the list's items
    binding.pry
  end

  def new
    @todolist = Todolist.new
  end

  def create
    Todolist.create todolist_params
    redirect_to todolist_index_path
  end

  def edit
    @todolist = Todolist.find(params[:id])
  end

  def update
    form_params = params.require(:todolist).permit(:title)
    todolist = Todolist.find(params[:id])
    todolist.update_attributes form_params
    redirect_to todolist_path(todolist)
  end

  def destroy
    todolist = Todolist.find params[:id]
    todolist.destroy
    redirect_to todolist_index_path
  end

  def todolist_params
    params.require(:todolist).permit(:title)
  end

end
