class ListsController < ApplicationController
  def index
    @lists = Todolist.all
    @list = Todolist.find_by(params[:id])
  end

  def create
    Todolist.create(params)
  end

  def update
    Todolist.update(params)
  end

  def show
    @list = Todolist.find(params[:list_id])
  end
end
